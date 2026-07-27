-- GUI-консоль для экзекуторов без встроенной консоли (Luau / Roblox)
-- Запускать ЭТОТ файл. Он сам скачает целевой скрипт, отдельно покажет
-- ошибку компиляции и ошибку выполнения, и даст скопировать лог кнопкой COPY.

local TARGET_URL = "https://raw.githubusercontent.com/anatolstrel281-prog/deoblua/refs/heads/main/final4.lua"

local Players = game:GetService("Players")
local LogService = game:GetService("LogService")

local parentGui
local okp = pcall(function()
	if gethui then
		parentGui = gethui()
	else
		parentGui = game:GetService("CoreGui")
	end
end)
if not okp or not parentGui then
	parentGui = Players.LocalPlayer:WaitForChild("PlayerGui")
end

local gui = Instance.new("ScreenGui")
gui.Name = "DeobConsole"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.DisplayOrder = 99999
gui.Parent = parentGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 660, 0, 380)
frame.Position = UDim2.new(0.5, -330, 0.5, -190)
frame.BackgroundColor3 = Color3.fromRGB(16, 16, 20)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local bar = Instance.new("TextLabel")
bar.Size = UDim2.new(1, 0, 0, 28)
bar.BackgroundColor3 = Color3.fromRGB(32, 32, 40)
bar.BorderSizePixel = 0
bar.Font = Enum.Font.Code
bar.TextSize = 14
bar.TextColor3 = Color3.fromRGB(235, 235, 235)
bar.Text = "  deob console"
bar.TextXAlignment = Enum.TextXAlignment.Left
bar.Parent = frame

local scroll = Instance.new("ScrollingFrame")
scroll.Size = UDim2.new(1, -8, 1, -70)
scroll.Position = UDim2.new(0, 4, 0, 32)
scroll.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
scroll.BorderSizePixel = 0
scroll.ScrollBarThickness = 6
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.Parent = frame

local layout = Instance.new("UIListLayout")
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Padding = UDim.new(0, 1)
layout.Parent = scroll

local buffer = {}
local count = 0

local function add(text, kind)
	count = count + 1
	buffer[#buffer + 1] = text
	local lbl = Instance.new("TextLabel")
	lbl.Size = UDim2.new(1, -8, 0, 0)
	lbl.AutomaticSize = Enum.AutomaticSize.Y
	lbl.BackgroundTransparency = 1
	lbl.Font = Enum.Font.Code
	lbl.TextSize = 13
	lbl.TextWrapped = true
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	lbl.TextYAlignment = Enum.TextYAlignment.Top
	lbl.LayoutOrder = count
	lbl.Text = text
	if kind == "err" then
		lbl.TextColor3 = Color3.fromRGB(255, 96, 96)
	elseif kind == "warn" then
		lbl.TextColor3 = Color3.fromRGB(255, 205, 90)
	elseif kind == "ok" then
		lbl.TextColor3 = Color3.fromRGB(120, 230, 130)
	else
		lbl.TextColor3 = Color3.fromRGB(215, 215, 215)
	end
	lbl.Parent = scroll
	task.defer(function()
		scroll.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 8)
		scroll.CanvasPosition = Vector2.new(0, math.max(0, layout.AbsoluteContentSize.Y - scroll.AbsoluteSize.Y))
	end)
end

local function mkbtn(text, x, w, fn)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(0, w, 0, 26)
	b.Position = UDim2.new(0, x, 1, -32)
	b.BackgroundColor3 = Color3.fromRGB(45, 45, 56)
	b.BorderSizePixel = 0
	b.Font = Enum.Font.Code
	b.TextSize = 13
	b.TextColor3 = Color3.fromRGB(240, 240, 240)
	b.Text = text
	b.Parent = frame
	b.MouseButton1Click:Connect(fn)
	return b
end

mkbtn("COPY", 6, 80, function()
	local blob = table.concat(buffer, "\n")
	local done = false
	pcall(function()
		if setclipboard then
			setclipboard(blob)
			done = true
		end
	end)
	if not done then
		pcall(function()
			if toclipboard then
				toclipboard(blob)
				done = true
			end
		end)
	end
	add(done and "[console] log copied to clipboard" or "[console] no clipboard function in this executor", done and "ok" or "warn")
end)

mkbtn("CLEAR", 92, 80, function()
	buffer = {}
	for _, c in ipairs(scroll:GetChildren()) do
		if c:IsA("TextLabel") then
			c:Destroy()
		end
	end
end)

mkbtn("CLOSE", 178, 80, function()
	gui:Destroy()
end)

-- перехват всего, что пишется в лог движка (в т.ч. ошибки из других потоков)
pcall(function()
	LogService.MessageOut:Connect(function(msg, mt)
		if mt == Enum.MessageType.MessageError then
			add("[engine error] " .. tostring(msg), "err")
		elseif mt == Enum.MessageType.MessageWarning then
			add("[engine warn] " .. tostring(msg), "warn")
		else
			add("[log] " .. tostring(msg))
		end
	end)
end)

add("[console] ready. executor: " .. tostring(identifyexecutor and identifyexecutor() or "unknown"), "ok")
add("[console] target: " .. TARGET_URL)

-- 1) загрузка
local ok, src = pcall(function()
	return game:HttpGet(TARGET_URL)
end)
if not ok then
	add("HTTPGET FAILED: " .. tostring(src), "err")
	return
end
add("[console] downloaded " .. tostring(#src) .. " bytes", "ok")

-- 2) компиляция (именно здесь падал патченный файл: слишком много локальных переменных)
local fn, cerr = loadstring(src)
if not fn then
	add("COMPILE ERROR: " .. tostring(cerr), "err")
	add("[console] скрипт даже не скомпилировался, до выполнения дело не дошло", "warn")
	return
end
add("[console] compiled OK", "ok")

-- 3) выполнение с трассировкой
local ok2, rerr = xpcall(fn, function(e)
	return tostring(e) .. "\n" .. debug.traceback()
end)
if not ok2 then
	add("RUNTIME ERROR: " .. tostring(rerr), "err")
else
	add("[console] script finished without raising an error", "ok")
end
