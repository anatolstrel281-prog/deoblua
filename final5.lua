-- [PATCHED] Inert stub used in place of external libraries:
-- any field access or call returns the stub itself, so call chains do not crash.
local _STUB_LIB = setmetatable({}, {
  __index = function(t, k) return t end,
  __call = function(t, ...) return t end,
})

-- MoonSec V3 -> readable Lua reconstruction
-- Names are synthetic (v<n>); comments and original identifiers of
-- locals are destroyed by compilation and cannot be recovered.

-- [SHIM] anti-tamper helper of the outer MoonSec wrapper, which we stripped away.
-- Original: iReFqswlfcYzuav = function(cb) cb(-722 + <arithmetic>) end, then set to nil.
-- It only feeds an integrity-check seed, so a constant is enough to get past the call.
if not _G.iReFqswlfcYzuav then
  _G.iReFqswlfcYzuav = function(cb) if cb then cb(0) end end
end

local _main = function()
  local up0, up1, up2, up3, up4, up5, up6, up7, up8, up9  -- [FIXED] were leaking into _G
  local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
  local v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23
  local v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35
  local v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47
  local v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59
  local v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71
  local v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83
  local v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95
  local v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107
  local v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119
  local v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131
  local v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143
  local v144, v145, v146, v147, v148, v149
  local _pc = 0
  while true do
    if _pc == 0 then
      v0 = _G.iReFqswlfcYzuav
      if not (not v0) then _pc = 4 else _pc = 2 end
    elseif _pc == 2 then
      _pc = 4
    elseif _pc == 3 then
      _pc = 48
    elseif _pc == 4 then
      v0 = {}
      v0 = v0[1]
      v1 = 0
      v2 = _G.iReFqswlfcYzuav
      v3 = function(v0)
        up0 = v0
        return
      end
      v2(v3)
      v2 = _G.type
      v3 = _G.string
      v3 = v3.sub
      v4 = _G.table
      v4 = v4.foreach
      v5 = _G.string
      v5 = v5.char
      v6 = _G.string
      v6 = v6.byte
      v7 = {}
      v8 = 0
      v9 = 255
      v10 = 1
      v11 = v8
      if not ((v10 > 0 and v8 <= v9) or (v10 <= 0 and v8 >= v9)) then _pc = 33 else _pc = 27 end
    elseif _pc == 27 then
      v12 = v5
      v13 = v11
      v12 = v12(v13)
      v7[v11] = v12
      v7[v12] = v11
      v8 = v8 + v10
      if (v10 > 0 and v8 <= v9) or (v10 <= 0 and v8 >= v9) then v11 = v8 end
      if (v10 > 0 and v8 <= v9) or (v10 <= 0 and v8 >= v9) then _pc = 27 else _pc = 33 end
    elseif _pc == 33 then
      v8 = nil
      v8 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12
        local _pc = 0
        while true do
          if _pc == 0 then
            v1 = up0
            v2 = v0
            v1 = v1(v2)
            if not (v1 ~= 'table') then _pc = 6 else _pc = 4 end
          elseif _pc == 4 then
            _pc = 6
          elseif _pc == 5 then
            _pc = 13
          elseif _pc == 6 then
            v1 = up1
            v2 = v0
            v3 = function(v0, v1)
              local v2, v3, v4
              up0[v0] = up1(v1)
              v2 = up0
              v3 = up1(v1)
              v4 = v1
              return
            end
            v1(v2, v3)
            _pc = 50
          elseif _pc == 13 then
            v1 = up0(v0)
            v2 = v0
            if not (v1 == 'string') then _pc = 50 else _pc = 17 end
          elseif _pc == 17 then
            _pc = 50
          elseif _pc == 18 then
            v1 = #v0
            if not (1 < v1) then _pc = 50 else _pc = 20 end
          elseif _pc == 20 then
            _pc = 50
          elseif _pc == 21 then
            v1 = up3
            v2 = v0
            v3 = 1
            v4 = 1
            v1 = v1(v2, v3, v4)
            if not (v1(v0, 1, 1) ~= '') then _pc = 29 else _pc = 27 end
          elseif _pc == 27 then
            _pc = 29
          elseif _pc == 28 then
            _pc = 50
          elseif _pc == 29 then
            v1 = ''
            v2 = 2
            v4 = 1
            v3 = #v0
            v5 = v2
            if not ((v4 > 0 and v2 <= v3) or (v4 <= 0 and v2 >= v3)) then _pc = 49 else _pc = 34 end
          elseif _pc == 34 then
            v6 = v1
            v7 = up4
            v8 = up4
            v9 = up3
            v10 = v0
            v11 = v5
            v12 = v5
            v9 = v9(v10, v11, v12)
            v8 = v8[v9]
            v9 = up5
            v8 = v8 + v9
            v8 = v8 % 256
            v7 = v7[v8]
            v1 = v6 .. v7
            v2 = v2 + v4
            if (v4 > 0 and v2 <= v3) or (v4 <= 0 and v2 >= v3) then v5 = v2 end
            if (v4 > 0 and v2 <= v3) or (v4 <= 0 and v2 >= v3) then _pc = 34 else _pc = 49 end
          elseif _pc == 49 then
            return v1
          elseif _pc == 50 then
            return v0
          elseif _pc == 51 then
            return
          else
            return
          end
        end
      end
      v0 = v8(v0)
      v9 = v8(v0)
      v10 = v0
      return v8(v0)
    elseif _pc == 46 then
      v0 = _G[0]
      -- DEAD (MoonSec filler, high register): v0 = v799[nil]
      v0 = vauzYcflwsqFeRi
      v0 = _G[0]
      -- INVALID (MoonSec filler): v0 = ?[nil]
      -- INVALID (MoonSec filler): v1 = ?
      -- INVALID (MoonSec filler): v0 = ?[nil]
      v0 = 'print'
      v0 = 1
      v0 = 'MoonSec_StringsHiddenAttr'
      -- DEAD (MoonSec filler, high register): v0 = v0(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v
      -- INVALID (MoonSec filler): v0[60] = ?
      -- INVALID (MoonSec filler): v0[60] = <expr?>
      -- INVALID (MoonSec filler): v0[1] = <expr?>
      -- INVALID (MoonSec filler): v0.game = <expr?>
      v1 = v0
      v0 = v0.GetService
      v2 = 'Players'
      v0 = v0(v1, v2)
      v0 = v0.LocalPlayer
      v0 = v0.Idled
      v1 = v0
      v0 = v0.connect
      v2 = function()
        local v0, v1, v2, v3, v4
        game.GetService(game, 'VirtualUser').Button2Down(game.GetService(game, 'VirtualUser'), Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        game.GetService(game, 'VirtualUser').Button2Up(game.GetService(game, 'VirtualUser'), Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        v0 = game.GetService(game, 'VirtualUser').Button2Up
        v1 = game.GetService(game, 'VirtualUser')
        v2 = Vector2.new(0, 0)
        v3 = workspace.CurrentCamera.CFrame
        v4 = 0
        return
      end
      v0(v1, v2)
      v0 = getgenv
      v0 = v0()
      v1 = game
      v2 = v1
      v1 = v1.GetService
      v3 = 'CoreGui'
      v1 = v1(v2, v3)
      v1 = v1.RobloxPromptGui
      v1 = v1.promptOverlay
      v1 = v1.ChildAdded
      v2 = v1
      v1 = v1.Connect
      v3 = function(v0)
        local v1, v2, v3
        local _pc = 0
        while true do
          if _pc == 0 then
            v1 = v0.Name
            if not (v1 ~= 'ErrorPrompt') then _pc = 4 else _pc = 2 end
          elseif _pc == 2 then
            _pc = 4
          elseif _pc == 3 then
            _pc = 25
          elseif _pc == 4 then
            v2 = v0
            v1 = v0.FindFirstChild
            v3 = 'MessageArea'
            v1 = v1(v2, v3)
            if not (not v1) then _pc = 10 else _pc = 8 end
          elseif _pc == 8 then
            _pc = 10
          elseif _pc == 9 then
            _pc = 25
          elseif _pc == 10 then
            v1 = v0.MessageArea
            v2 = v1
            v1 = v1.FindFirstChild
            v3 = 'ErrorFrame'
            v1 = v1(v2, v3)
            if not (not v1) then _pc = 17 else _pc = 15 end
          elseif _pc == 15 then
            _pc = 17
          elseif _pc == 16 then
            _pc = 25
          elseif _pc == 17 then
            game.GetService(game, 'TeleportService').Teleport(game.GetService(game, 'TeleportService'), game.PlaceId)
            v1 = game.GetService(game, 'TeleportService').Teleport
            v2 = game.GetService(game, 'TeleportService')
            v3 = game.PlaceId
            _pc = 25
          elseif _pc == 25 then
            return
          else
            return
          end
        end
      end
      v1 = v1(v2, v3)
      v0.rejoin = v1
      v0 = loadstring
      v1 = game
      v2 = v1
      v1 = v1.HttpGet
      v3 = 'https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'
      v0 = v0(v1(v2, v3))  -- [FIXED] loadstring(game:HttpGet(url))
      v0 = v0()
      -- [PATCHED] Load of external library JumESPLIB.lua disabled.
      -- Original: loadstring(game:HttpGet('https://jumblescripts.com/JumESPLIB.lua'))()
      v1 = _STUB_LIB
      v3 = v0
      v2 = v0.CreateWindow
      v4 = {}
      -- INVALID (MoonSec filler): v4.Name = ?K?
      -- INVALID (MoonSec filler): v4.LoadingTitle = ?R?
      -- INVALID (MoonSec filler): v4.LoadingSubtitle = ?b?
      v5 = {}
      -- INVALID (MoonSec filler): v5.Enabled = <expr?>
      -- INVALID (MoonSec filler): v5.FolderName = <expr?>
      -- INVALID (MoonSec filler): v5.FileName = ?K?
      v4.ConfigurationSaving = v5
      v5 = {}
      -- INVALID (MoonSec filler): v5.Enabled = <expr?>
      v5.Invite = 'i'
      -- INVALID (MoonSec filler): v5.RememberJoins = <expr?>
      v4.Discord = v5
      -- INVALID (MoonSec filler): v4.KeySystem = <expr?>
      v5 = {}
      -- INVALID (MoonSec filler): v5.Title = ?S?
      -- INVALID (MoonSec filler): v5.Subtitle = ?K?
      -- INVALID (MoonSec filler): v5.Note = ?J?
      -- INVALID (MoonSec filler): v5.FileName = ?S?
      -- INVALID (MoonSec filler): v5.SaveKey = <expr?>
      -- INVALID (MoonSec filler): v5.GrabKeyFromSite = <expr?>
      -- INVALID (MoonSec filler): v5.Key = ?H?
      v4.KeySettings = v5
      v2 = v2(v3, v4)
      v3 = game
      v3 = v3.Players
      v3 = v3.LocalPlayer
      v4 = nil
      v5 = nil
      v6 = math
      v6 = v6.huge
      v7 = function(v0, v1)
        local v2, v3, v4, v5, v6, v7, v8
        if not (not (not v1)) then
          v1 = 25
        end
        v8 = {}
        v8.CFrame = v0
        game.GetService(game, 'TweenService').Create(game.GetService(game, 'TweenService'), game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new((v0.p - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / v1, Enum.EasingStyle.Linear), v8):Play()
        v2 = (v0.p - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / v1
        v3 = TweenInfo.new((v0.p - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / v1, Enum.EasingStyle.Linear)
        v4 = game.GetService(game, 'TweenService').Create(game.GetService(game, 'TweenService'), game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new((v0.p - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / v1, Enum.EasingStyle.Linear), v8)
        v5 = game.GetService(game, 'TweenService').Create(game.GetService(game, 'TweenService'), game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new((v0.p - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / v1, Enum.EasingStyle.Linear), v8).Play
        v6 = game.GetService(game, 'TweenService').Create(game.GetService(game, 'TweenService'), game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new((v0.p - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / v1, Enum.EasingStyle.Linear), v8)
        v7 = TweenInfo.new((v0.p - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / v1, Enum.EasingStyle.Linear)
        return
      end
      Tween = v7
      v8 = v2
      v7 = v2.CreateTab
      v7 = v7(v8, 'Farm', 12986579895)
      v8 = v2.CreateTab
      v8 = v8(v2, 'Esp', 13005394944)
      v13 = {}
      -- INVALID (MoonSec filler): v13.Name = ?C?
      -- INVALID (MoonSec filler): v13.Info = ?E?
      -- INVALID (MoonSec filler): v13.CurrentValue = <expr?>
      v13.SectionParent = v7.CreateSection(v7, 'Coin', false)
      -- INVALID (MoonSec filler): v13.Flag = ?P?
      v9 = v2.CreateTab(v2, 'Aim', 10110319522)
      v10 = v7.CreateSection(v7, 'Coin', false)
      v11 = v7.CreateToggle
      v12 = v7
      v14 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7, v8, v9
        v1 = _G
        v1.CoinFarm = v0
        while true do
          v1 = wait()
          if not (v1) then break end
          do break end  -- [FIXED] break/return must end its block
          v1 = pcall
          v2 = function()
            local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9
            local _pc = 0
            while true do
              if _pc == 0 then
                v0 = _G
                v0 = v0.CoinFarm
                if not (v0.CoinFarm) then _pc = 156 else _pc = 3 end
              elseif _pc == 3 then
                _pc = 156
              elseif _pc == 4 then
                v0 = up0
                v0 = v0.PlayerGui
                v0 = v0.MainGUI
                v0 = v0.Game
                v0 = v0.CashBag
                v0 = v0.Visible
                if not (v0.PlayerGui.MainGUI.Game.CashBag.Visible) then _pc = 191 else _pc = 11 end
              elseif _pc == 11 then
                _pc = 191
              elseif _pc == 12 then
                v0 = up0
                v0 = v0.PlayerGui
                v0 = v0.MainGUI
                v0 = v0.Game
                v0 = v0.CashBag
                v0 = v0.Full
                v0 = v0.Visible
                if not (v0.PlayerGui.MainGUI.Game.CashBag.Full.Visible) then _pc = 22 else _pc = 20 end
              elseif _pc == 20 then
                _pc = 22
              elseif _pc == 21 then
                _pc = 191
              elseif _pc == 22 then
                v0 = game
                v0 = v0.Workspace
                v3 = v0
                local _r = {v1(v2, v3)}  -- multret: arg range approximated
                v1 = _r[1]
                v2 = _r[2]
                v3 = _r[3]
                _pc = 59
              elseif _pc == 29 then
                v7 = v5
                v6 = v5.IsA
                v8 = 'BasePart'
                v6 = v6(v7, v8)
                if not (v6) then _pc = 59 else _pc = 33 end
              elseif _pc == 33 then
                _pc = 59
              elseif _pc == 34 then
                v6 = v5.Name
                if not (v6 ~= 'Coin_Server') then _pc = 38 else _pc = 36 end
              elseif _pc == 36 then
                _pc = 38
              elseif _pc == 37 then
                _pc = 59
              elseif _pc == 38 then
                v6 = v5.Coin
                v6 = v6.BrickColor
                v7 = BrickColor
                v7 = v7.new
                v8 = 'Bright yellow'
                v7 = v7(v8)
                if not (v6.BrickColor ~= BrickColor.new('Bright yellow')) then _pc = 47 else _pc = 45 end
              elseif _pc == 45 then
                _pc = 47
              elseif _pc == 46 then
                _pc = 59
              elseif _pc == 47 then
                v6 = up0
                v6 = v6.Character
                v6 = v6.HumanoidRootPart
                v6 = v6.Position
                v7 = v5.Position
                v6 = v6 - v7
                v6 = v6.magnitude
                v7 = up1
                if not (v6 < v7) then _pc = 59 else _pc = 56 end
              elseif _pc == 56 then
                _pc = 59
              elseif _pc == 57 then
                up0 = v5
                up0 = v6
                _pc = 59
              elseif _pc == 59 then
                local _it = {v1(v2, v3)}
                v4 = _it[1]
                v5 = _it[2]
                if v4 ~= nil then v3 = v4 end
                if v4 ~= nil then _pc = 29 else _pc = 60 end
              elseif _pc == 60 then
                _pc = 29
              elseif _pc == 61 then
                v1 = up2
                if not (not v1) then _pc = 65 else _pc = 63 end
              elseif _pc == 63 then
                _pc = 65
              elseif _pc == 64 then
                _pc = 191
              elseif _pc == 65 then
                v1 = up2
                v2 = v1
                v1 = v1.FindFirstChild
                v3 = 'TouchInterest'
                v1 = v1(v2, v3)
                if not (not v1) then _pc = 72 else _pc = 70 end
              elseif _pc == 70 then
                _pc = 72
              elseif _pc == 71 then
                _pc = 191
              elseif _pc == 72 then
                v3 = math
                v3 = v3.pi
                v3 = v3 / 2
                v4 = 0
                v3 = 0
                v4 = -5
                v3 = up0
                v3 = v3.Character
                v4 = v3
                v3 = v3.GetDescendants
                local _r = {v2(v3, v4)}  -- multret: arg range approximated
                v3 = _r[2]
                v4 = _r[3]
                v1 = up2.CFrame * CFrame.Angles(v3, v4, 0) + Vector3.new(v3, v4, 0)
                local _r = {v2(v3, v4)}  -- multret: arg range approximated
                v2 = _r[1]
                v5 = 0
                _pc = 104
              elseif _pc == 97 then
                v8 = v6
                v7 = v6.IsA
                v9 = 'BasePart'
                v7 = v7(v8, v9)
                if not (not v7) then _pc = 103 else _pc = 101 end
              elseif _pc == 101 then
                _pc = 103
              elseif _pc == 102 then
                _pc = 104
              elseif _pc == 103 then
                -- INVALID (MoonSec filler): v6.CanCollide = <expr?>
                _pc = 104
              elseif _pc == 104 then
                local _it = {v2(v3, v4)}
                v5 = _it[1]
                v6 = _it[2]
                if v5 ~= nil then v4 = v5 end
                if v5 ~= nil then _pc = 97 else _pc = 105 end
              elseif _pc == 105 then
                _pc = 97
              elseif _pc == 106 then
                -- INVALID (MoonSec filler): Instance.new('BodyVelocity').Name = ?B?
                Instance.new('BodyVelocity').Parent = up0.Character.HumanoidRootPart
                Instance.new('BodyVelocity').MaxForce = Vector3.new(100000, 100000, 100000)
                Instance.new('BodyVelocity').Velocity = Vector3.new(0, 0, 0)
                Tween(v1, 30)
                firetouchinterest(up0.Character.HumanoidRootPart, up2, 0)
                firetouchinterest(up0.Character.HumanoidRootPart, up2, 1)
                up0 = nil
                up0 = math.huge
                wait(0.6)
                v2 = Instance.new('BodyVelocity')
                v3 = wait
                v4 = 0.6
                v5 = up2
                v6 = 1
                _pc = 191
              elseif _pc == 156 then
                v0 = game
                v0 = v0.Players
                v0 = v0.LocalPlayer
                v0 = v0.Character
                v0 = v0.HumanoidRootPart
                v1 = v0
                v0 = v0.FindFirstChild
                v2 = 'BodyClip'
                v0 = v0(v1, v2)
                if not (v0) then _pc = 176 else _pc = 165 end
              elseif _pc == 165 then
                _pc = 176
              elseif _pc == 166 then
                v0 = game
                v0 = v0.Players
                v0 = v0.LocalPlayer
                v0 = v0.Character
                v0 = v0.HumanoidRootPart
                v1 = v0
                v0 = v0.FindFirstChild
                v2 = 'BodyClip'
                v0 = v0(v1, v2)
                v1 = v0
                v0 = v0.Destroy
                v0(v1)
                _pc = 176
              elseif _pc == 176 then
                v0 = pairs
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                v2 = _r[3]
                _pc = 189
              elseif _pc == 183 then
                v6 = v4
                v5 = v4.IsA
                v7 = 'BasePart'
                v5 = v5(v6, v7)
                if not (v5) then _pc = 189 else _pc = 187 end
              elseif _pc == 187 then
                _pc = 189
              elseif _pc == 188 then
                -- INVALID (MoonSec filler): v4.CanCollide = <expr?>
                _pc = 189
              elseif _pc == 189 then
                local _it = {v0(v1, v2)}
                v3 = _it[1]
                v4 = _it[2]
                if v3 ~= nil then v2 = v3 end
                if v3 ~= nil then _pc = 183 else _pc = 190 end
              elseif _pc == 190 then
                _pc = 183
              elseif _pc == 191 then
                return
              else
                return
              end
            end
          end
          v1(v2)
        end
        return
      end
      v13.Callback = v14
      v15 = {}
      -- INVALID (MoonSec filler): v15.Name = ?E?
      -- INVALID (MoonSec filler): v15.Info = ?E?
      -- INVALID (MoonSec filler): v15.CurrentValue = <expr?>
      v15.SectionParent = v7.CreateSection(v7, 'Egg', false)
      -- INVALID (MoonSec filler): v15.Flag = ?E?
      v11 = v11(v12, v13)
      v12 = v7.CreateSection(v7, 'Egg', false)
      v13 = v7.CreateToggle
      v14 = v7
      v16 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7, v8, v9
        v1 = _G
        v1.EggFarm = v0
        while true do
          v1 = wait()
          if not (v1) then break end
          do break end  -- [FIXED] break/return must end its block
          v1 = pcall
          v2 = function()
            local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9
            local _pc = 0
            while true do
              if _pc == 0 then
                v0 = _G
                v0 = v0.EggFarm
                if not (v0.EggFarm) then _pc = 192 else _pc = 3 end
              elseif _pc == 3 then
                _pc = 192
              elseif _pc == 4 then
                v0 = up0
                v0 = v0.PlayerGui
                v0 = v0.MainGUI
                v0 = v0.Game
                v0 = v0.CashBag
                v0 = v0.Visible
                if not (v0.PlayerGui.MainGUI.Game.CashBag.Visible) then _pc = 156 else _pc = 11 end
              elseif _pc == 11 then
                _pc = 156
              elseif _pc == 12 then
                v0 = up0
                v0 = v0.PlayerGui
                v0 = v0.MainGUI
                v0 = v0.Game
                v0 = v0.CashBag
                v0 = v0.Full
                v0 = v0.Visible
                if not (not v0.PlayerGui.MainGUI.Game.CashBag.Full.Visible) then _pc = 156 else _pc = 20 end
              elseif _pc == 20 then
                _pc = 156
              elseif _pc == 21 then
                v0 = pairs
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                v2 = _r[3]
                _pc = 64
              elseif _pc == 28 then
                v6 = v4
                v5 = v4.IsA
                v7 = 'BasePart'
                v5 = v5(v6, v7)
                if not (v5) then _pc = 64 else _pc = 32 end
              elseif _pc == 32 then
                _pc = 64
              elseif _pc == 33 then
                v5 = v4.Name
                if not (v5 == 'Coin_Server') then _pc = 64 else _pc = 35 end
              elseif _pc == 35 then
                _pc = 64
              elseif _pc == 36 then
                v5 = v4.Coin
                v5 = v5.BrickColor
                v6 = BrickColor
                v6 = v6.new
                v7 = 'Really black'
                v6 = v6(v7)
                if not (v5.BrickColor ~= BrickColor.new('Really black')) then _pc = 45 else _pc = 43 end
              elseif _pc == 43 then
                _pc = 45
              elseif _pc == 44 then
                _pc = 64
              elseif _pc == 45 then
                v6 = v4
                v5 = v4.FindFirstChild
                v7 = 'RareEffect'
                v5 = v5(v6, v7, true)
                v8 = true
                if not (not v5) then _pc = 64 else _pc = 50 end
              elseif _pc == 50 then
                _pc = 64
              elseif _pc == 51 then
                v5 = up0
                v5 = v5.Character
                v5 = v5.HumanoidRootPart
                v5 = v5.Position
                v6 = v4.Position
                v5 = v5 - v6
                v5 = v5.magnitude
                v6 = up1
                if v5 < v6 then _pc = 62 else _pc = 60 end
              elseif _pc == 60 then
                _pc = 62
              elseif _pc == 61 then
                _pc = 64
              elseif _pc == 62 then
                up0 = v4
                up0 = v5
                _pc = 64
              elseif _pc == 64 then
                local _it = {v0(v1, v2)}
                v3 = _it[1]
                v4 = _it[2]
                if v3 ~= nil then v2 = v3 end
                if v3 ~= nil then _pc = 28 else _pc = 65 end
              elseif _pc == 65 then
                _pc = 28
              elseif _pc == 66 then
                v0 = up2
                if not (v0) then _pc = 192 else _pc = 68 end
              elseif _pc == 68 then
                _pc = 192
              elseif _pc == 69 then
                v1 = v0.FindFirstChild(v0, 'TouchInterest')
                v2 = v0
                v3 = 'TouchInterest'
                if not (v1) then _pc = 192 else _pc = 73 end
              elseif _pc == 73 then
                _pc = 192
              elseif _pc == 74 then
                v3 = math
                v3 = v3.pi
                v3 = v3 / 2
                v4 = 0
                v3 = 0
                v4 = -5
                v3 = up0
                v3 = v3.Character
                v4 = v3
                v3 = v3.GetDescendants
                local _r = {v2(v3, v4)}  -- multret: arg range approximated
                v3 = _r[2]
                v4 = _r[3]
                v1 = v0.CFrame * CFrame.Angles(v3, v4, 0) + Vector3.new(v3, v4, 0)
                local _r = {v2(v3, v4)}  -- multret: arg range approximated
                v2 = _r[1]
                v5 = 0
                _pc = 104
              elseif _pc == 98 then
                v8 = v6
                v7 = v6.IsA
                v9 = 'BasePart'
                v7 = v7(v8, v9)
                if not (v7) then _pc = 104 else _pc = 102 end
              elseif _pc == 102 then
                _pc = 104
              elseif _pc == 103 then
                -- INVALID (MoonSec filler): v6.CanCollide = <expr?>
                _pc = 104
              elseif _pc == 104 then
                local _it = {v2(v3, v4)}
                v5 = _it[1]
                v6 = _it[2]
                if v5 ~= nil then v4 = v5 end
                if v5 ~= nil then _pc = 98 else _pc = 105 end
              elseif _pc == 105 then
                _pc = 98
              elseif _pc == 106 then
                -- INVALID (MoonSec filler): Instance.new('BodyVelocity').Name = ?B?
                Instance.new('BodyVelocity').Parent = up0.Character.HumanoidRootPart
                Instance.new('BodyVelocity').MaxForce = Vector3.new(100000, 100000, 100000)
                Instance.new('BodyVelocity').Velocity = Vector3.new(0, 0, 0)
                Tween(v1, 30)
                firetouchinterest(up0.Character.HumanoidRootPart, v0, 0)
                firetouchinterest(up0.Character.HumanoidRootPart, v0, 1)
                up0 = nil
                up0 = math.huge
                wait(0.6)
                v2 = Instance.new('BodyVelocity')
                v3 = wait
                v4 = 0.6
                v5 = v0
                v6 = 1
                _pc = 192
              elseif _pc == 156 then
                v0 = game
                v0 = v0.Players
                v0 = v0.LocalPlayer
                v0 = v0.Character
                v0 = v0.HumanoidRootPart
                v1 = v0
                v0 = v0.FindFirstChild
                v2 = 'BodyClip'
                v0 = v0(v1, v2)
                if not (v0) then _pc = 176 else _pc = 165 end
              elseif _pc == 165 then
                _pc = 176
              elseif _pc == 166 then
                v0 = game
                v0 = v0.Players
                v0 = v0.LocalPlayer
                v0 = v0.Character
                v0 = v0.HumanoidRootPart
                v1 = v0
                v0 = v0.FindFirstChild
                v2 = 'BodyClip'
                v0 = v0(v1, v2)
                v1 = v0
                v0 = v0.Destroy
                v0(v1)
                _pc = 176
              elseif _pc == 176 then
                v0 = pairs
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                v2 = _r[3]
                _pc = 190
              elseif _pc == 183 then
                v6 = v4
                v5 = v4.IsA
                v7 = 'BasePart'
                v5 = v5(v6, v7)
                if not (not v5) then _pc = 189 else _pc = 187 end
              elseif _pc == 187 then
                _pc = 189
              elseif _pc == 188 then
                _pc = 190
              elseif _pc == 189 then
                -- INVALID (MoonSec filler): v4.CanCollide = <expr?>
                _pc = 190
              elseif _pc == 190 then
                local _it = {v0(v1, v2)}
                v3 = _it[1]
                v4 = _it[2]
                if v3 ~= nil then v2 = v3 end
                if v3 ~= nil then _pc = 183 else _pc = 191 end
              elseif _pc == 191 then
                _pc = 183
              elseif _pc == 192 then
                return
              else
                return
              end
            end
          end
          v1(v2)
        end
        return
      end
      v15.Callback = v16
      v16 = {}
      -- INVALID (MoonSec filler): v16.Name = ?A?
      -- INVALID (MoonSec filler): v16.Info = ?G?
      -- INVALID (MoonSec filler): v16.CurrentValue = <expr?>
      v16.SectionParent = v12
      -- INVALID (MoonSec filler): v16.Flag = ?R?
      v13 = v13(v14, v15)
      v14 = v7.CreateToggle
      v15 = v7
      v17 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7, v8
        v1 = _G
        v1.RareEggPriority = v0
        while true do
          v1 = wait()
          if not (v1) then break end
          do break end  -- [FIXED] break/return must end its block
          v1 = pcall
          v2 = function()
            local v0, v1, v2, v3, v4, v5, v6, v7, v8
            local _pc = 0
            while true do
              if _pc == 0 then
                v0 = _G
                v0 = v0.RareEggPriority
                if not (v0.RareEggPriority) then _pc = 68 else _pc = 3 end
              elseif _pc == 3 then
                _pc = 68
              elseif _pc == 4 then
                v0 = up0
                v0 = v0.PlayerGui
                v0 = v0.MainGUI
                v0 = v0.Game
                v0 = v0.CashBag
                v0 = v0.Visible
                if not (not v0.PlayerGui.MainGUI.Game.CashBag.Visible) then _pc = 13 else _pc = 11 end
              elseif _pc == 11 then
                _pc = 13
              elseif _pc == 12 then
                _pc = 68
              elseif _pc == 13 then
                v0 = up0
                v0 = v0.PlayerGui
                v0 = v0.MainGUI
                v0 = v0.Game
                v0 = v0.CashBag
                v0 = v0.Full
                v0 = v0.Visible
                if not (not v0.PlayerGui.MainGUI.Game.CashBag.Full.Visible) then _pc = 68 else _pc = 21 end
              elseif _pc == 21 then
                _pc = 68
              elseif _pc == 22 then
                v0 = pairs
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                v2 = _r[3]
                _pc = 66
              elseif _pc == 29 then
                v5 = _G
                v5 = v5.RareEggPriority
                if not (v5.RareEggPriority) then _pc = 66 else _pc = 32 end
              elseif _pc == 32 then
                _pc = 66
              elseif _pc == 33 then
                v5 = v4.IsA
                v5 = v5(v4, 'BasePart')
                v6 = v4
                v7 = 'BasePart'
                if not (not v5) then _pc = 39 else _pc = 37 end
              elseif _pc == 37 then
                _pc = 39
              elseif _pc == 38 then
                _pc = 66
              elseif _pc == 39 then
                v5 = v4.Name
                if not (v5 == 'Coin_Server') then _pc = 66 else _pc = 41 end
              elseif _pc == 41 then
                _pc = 66
              elseif _pc == 42 then
                v6 = v4
                v5 = v4.FindFirstChild
                v7 = 'RareEffect'
                v5 = v5(v6, v7, true)
                v8 = true
                if not (not v5) then _pc = 49 else _pc = 47 end
              elseif _pc == 47 then
                _pc = 49
              elseif _pc == 48 then
                _pc = 66
              elseif _pc == 49 then
                v6 = print
                v7 = 'working'
                v6(v7)
                v6 = _G
                v6 = v6.RareEggPriority
                if not (not _G.RareEggPriority) then _pc = 57 else _pc = 55 end
              elseif _pc == 55 then
                _pc = 57
              elseif _pc == 56 then
                _pc = 66
              elseif _pc == 57 then
                up0.Character.HumanoidRootPart.CFrame = v4.CFrame
                task.wait(1)
                v6 = task.wait
                v7 = 1
                _pc = 66
              elseif _pc == 66 then
                local _it = {v0(v1, v2)}
                v3 = _it[1]
                v4 = _it[2]
                if v3 ~= nil then v2 = v3 end
                if v3 ~= nil then _pc = 29 else _pc = 67 end
              elseif _pc == 67 then
                _pc = 29
              elseif _pc == 68 then
                return
              else
                return
              end
            end
          end
          v1(v2)
          v1 = wait
          v1(1)
          v2 = 1
        end
        return
      end
      v16.Callback = v17
      v18 = {}
      -- INVALID (MoonSec filler): v18.Name = ?C?
      -- INVALID (MoonSec filler): v18.Info = ?E?
      -- INVALID (MoonSec filler): v18.CurrentValue = <expr?>
      v18.SectionParent = v7.CreateSection(v7, 'Good Mobile', false)
      -- INVALID (MoonSec filler): v18.Flag = ?G?
      v14 = v14(v15, v16)
      v15 = v7.CreateSection(v7, 'Good Mobile', false)
      v16 = v7.CreateToggle
      v17 = v7
      v19 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12
        local v13, v14
        v1 = _G
        v1.GoodMobileCoinFarm = v0
        while true do
          v1 = wait()
          if not (v1) then break end
          do break end  -- [FIXED] break/return must end its block
          v1 = pcall
          v2 = function()
            local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
            local v12, v13, v14
            local _pc = 0
            while true do
              if _pc == 0 then
                v0 = _G
                v0 = v0.GoodMobileCoinFarm
                if not (v0.GoodMobileCoinFarm) then _pc = 205 else _pc = 3 end
              elseif _pc == 3 then
                _pc = 205
              elseif _pc == 4 then
                v0 = pairs
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                v2 = _r[3]
                _pc = 203
              elseif _pc == 11 then
                v5 = v4.Character
                if not (v5) then _pc = 203 else _pc = 13 end
              elseif _pc == 13 then
                _pc = 203
              elseif _pc == 14 then
                v5 = v4.Backpack
                v6 = v5
                v5 = v5.findFirstChild
                v7 = 'Knife'
                v5 = v5(v6, v7)
                if not (not v5) then _pc = 27 else _pc = 19 end
              elseif _pc == 19 then
                _pc = 27
              elseif _pc == 20 then
                v5 = v4.Character
                v6 = v5
                v5 = v5.findFirstChild
                v7 = 'Knife'
                v5 = v5(v6, v7)
                if not (not v5) then _pc = 27 else _pc = 25 end
              elseif _pc == 25 then
                _pc = 27
              elseif _pc == 26 then
                _pc = 167
              elseif _pc == 27 then
                v5 = game.Workspace
                local _r = {v6(v7)}  -- multret: arg range approximated
                v6 = _r[1]
                v7 = _r[2]
                v8 = _r[3]
                _pc = 65
              elseif _pc == 34 then
                v12 = v10
                v11 = v10.IsA
                v13 = 'BasePart'
                v11 = v11(v12, v13)
                if not (v11) then _pc = 65 else _pc = 38 end
              elseif _pc == 38 then
                _pc = 65
              elseif _pc == 39 then
                v11 = v10.Name
                if not (v11 ~= 'Coin_Server') then _pc = 43 else _pc = 41 end
              elseif _pc == 41 then
                _pc = 43
              elseif _pc == 42 then
                _pc = 65
              elseif _pc == 43 then
                v11 = v10.Coin
                v11 = v11.BrickColor
                v12 = BrickColor
                v12 = v12.new
                v13 = 'Bright yellow'
                v12 = v12(v13)
                if not (v11.BrickColor ~= BrickColor.new('Bright yellow')) then _pc = 52 else _pc = 50 end
              elseif _pc == 50 then
                _pc = 52
              elseif _pc == 51 then
                _pc = 65
              elseif _pc == 52 then
                v11 = up0
                v11 = v11.Character
                v11 = v11.HumanoidRootPart
                v11 = v11.Position
                v12 = v10.Position
                v11 = v11 - v12
                v11 = v11.magnitude
                v12 = up1
                if v11 < v12 then _pc = 63 else _pc = 61 end
              elseif _pc == 61 then
                _pc = 63
              elseif _pc == 62 then
                _pc = 65
              elseif _pc == 63 then
                up0 = v10
                up0 = v11
                _pc = 65
              elseif _pc == 65 then
                local _it = {v6(v7, v8)}
                v9 = _it[1]
                v10 = _it[2]
                if v9 ~= nil then v8 = v9 end
                if v9 ~= nil then _pc = 34 else _pc = 66 end
              elseif _pc == 66 then
                _pc = 34
              elseif _pc == 67 then
                v6 = up2
                if not (v6) then _pc = 203 else _pc = 69 end
              elseif _pc == 69 then
                _pc = 203
              elseif _pc == 70 then
                v6 = up2.CFrame * CFrame.Angles(math.pi / 2, 0, 0) + Vector3.new(0, -5, 0)
                local _r = {v7(v8)}  -- multret: arg range approximated
                v7 = _r[1]
                v8 = _r[2]
                v9 = _r[3]
                v10 = 0
                _pc = 102
              elseif _pc == 95 then
                v13 = v11
                v12 = v11.IsA
                v14 = 'BasePart'
                v12 = v12(v13, v14)
                if not (not v12) then _pc = 101 else _pc = 99 end
              elseif _pc == 99 then
                _pc = 101
              elseif _pc == 100 then
                _pc = 102
              elseif _pc == 101 then
                -- INVALID (MoonSec filler): v11.CanCollide = <expr?>
                _pc = 102
              elseif _pc == 102 then
                local _it = {v7(v8, v9)}
                v10 = _it[1]
                v11 = _it[2]
                if v10 ~= nil then v9 = v10 end
                if v10 ~= nil then _pc = 95 else _pc = 103 end
              elseif _pc == 103 then
                _pc = 95
              elseif _pc == 104 then
                -- INVALID (MoonSec filler): Instance.new('BodyVelocity').Name = ?B?
                Instance.new('BodyVelocity').Parent = up0.Character.HumanoidRootPart
                v9 = 100000
                v10 = 100000
                Instance.new('BodyVelocity').MaxForce = Vector3.new(v9, v10, 100000)
                v9 = 0
                v10 = 0
                Instance.new('BodyVelocity').Velocity = Vector3.new(v9, v10, 0)
                v7 = Instance.new('BodyVelocity')
                v8 = up1 / 30
                v11 = 0
                if 10 < v8 then _pc = 132 else _pc = 130 end
              elseif _pc == 130 then
                _pc = 132
              elseif _pc == 131 then
                _pc = 140
              elseif _pc == 132 then
                v9 = wait
                v10 = 3
                v9(v10)
                v9 = up0
                v9 = v9.Character
                v9 = v9.HumanoidRootPart
                v9.CFrame = v6
                _pc = 163
              elseif _pc == 140 then
                v9 = Tween
                v10 = v6
                v9(v10, 30)
                v9 = firetouchinterest
                v10 = up0
                v10 = v10.Character
                v10 = v10.HumanoidRootPart
                v9(v10, up2, 0)
                v9 = firetouchinterest
                v10 = up0
                v10 = v10.Character
                v10 = v10.HumanoidRootPart
                v9(v10, up2, 1)
                v9 = nil
                up0 = v9
                v9 = math
                v9 = v9.huge
                up0 = v9
                v11 = up2
                v12 = 1
                _pc = 163
              elseif _pc == 163 then
                wait(0.6)
                v9 = wait
                v10 = 0.6
                _pc = 203
              elseif _pc == 167 then
                v5 = game
                v5 = v5.Players
                v5 = v5.LocalPlayer
                v5 = v5.Character
                v5 = v5.HumanoidRootPart
                v6 = v5
                v5 = v5.FindFirstChild
                v7 = 'BodyClip'
                v5 = v5(v6, v7)
                if not (v5) then _pc = 187 else _pc = 176 end
              elseif _pc == 176 then
                _pc = 187
              elseif _pc == 177 then
                v5 = game
                v5 = v5.Players
                v5 = v5.LocalPlayer
                v5 = v5.Character
                v5 = v5.HumanoidRootPart
                v6 = v5
                v5 = v5.FindFirstChild
                v7 = 'BodyClip'
                v5 = v5(v6, v7)
                v6 = v5
                v5 = v5.Destroy
                v5(v6)
                _pc = 187
              elseif _pc == 187 then
                local _r = {v5(v6)}  -- multret: arg range approximated
                v5 = _r[1]
                v6 = _r[2]
                v7 = _r[3]
                _pc = 201
              elseif _pc == 194 then
                v11 = v9
                v10 = v9.IsA
                v12 = 'BasePart'
                v10 = v10(v11, v12)
                if not (not v10) then _pc = 200 else _pc = 198 end
              elseif _pc == 198 then
                _pc = 200
              elseif _pc == 199 then
                _pc = 201
              elseif _pc == 200 then
                -- INVALID (MoonSec filler): v9.CanCollide = <expr?>
                _pc = 201
              elseif _pc == 201 then
                local _it = {v5(v6, v7)}
                v8 = _it[1]
                v9 = _it[2]
                if v8 ~= nil then v7 = v8 end
                if v8 ~= nil then _pc = 194 else _pc = 202 end
              elseif _pc == 202 then
                _pc = 194
              elseif _pc == 203 then
                local _it = {v0(v1, v2)}
                v3 = _it[1]
                v4 = _it[2]
                if v3 ~= nil then v2 = v3 end
                if v3 ~= nil then _pc = 11 else _pc = 204 end
              elseif _pc == 204 then
                _pc = 11
              elseif _pc == 205 then
                return
              else
                return
              end
            end
          end
          v1(v2)
        end
        return
      end
      v18.Callback = v19
      v19 = {}
      -- INVALID (MoonSec filler): v19.Name = ?E?
      -- INVALID (MoonSec filler): v19.Info = ?E?
      -- INVALID (MoonSec filler): v19.CurrentValue = <expr?>
      v19.SectionParent = v15
      -- INVALID (MoonSec filler): v19.Flag = ?G?
      v16 = v16(v17, v18)
      v17 = v7.CreateToggle
      v18 = v7
      v20 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12
        local v13, v14
        v1 = _G
        v1.GoodMobileEggFarm = v0
        while true do
          v1 = wait()
          if not (v1) then break end
          do break end  -- [FIXED] break/return must end its block
          v1 = pcall
          v2 = function()
            local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
            local v12, v13, v14
            local _pc = 0
            while true do
              if _pc == 0 then
                v0 = _G
                v0 = v0.GoodMobileEggFarm
                if not (v0.GoodMobileEggFarm) then _pc = 176 else _pc = 3 end
              elseif _pc == 3 then
                _pc = 176
              elseif _pc == 4 then
                v0 = pairs
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                v2 = _r[3]
                _pc = 173
              elseif _pc == 11 then
                v5 = v4.Character
                if not (v5) then _pc = 173 else _pc = 13 end
              elseif _pc == 13 then
                _pc = 173
              elseif _pc == 14 then
                v5 = v4.Backpack
                v6 = v5
                v5 = v5.findFirstChild
                v7 = 'Knife'
                v5 = v5(v6, v7)
                if not (not v5) then _pc = 27 else _pc = 19 end
              elseif _pc == 19 then
                _pc = 27
              elseif _pc == 20 then
                v5 = v4.Character
                v6 = v5
                v5 = v5.findFirstChild
                v7 = 'Knife'
                v5 = v5(v6, v7)
                if not (not v5) then _pc = 27 else _pc = 25 end
              elseif _pc == 25 then
                _pc = 27
              elseif _pc == 26 then
                _pc = 173
              elseif _pc == 27 then
                local _r = {v5(v6)}  -- multret: arg range approximated
                v5 = _r[1]
                v6 = _r[2]
                v7 = _r[3]
                _pc = 69
              elseif _pc == 34 then
                v11 = v9
                v10 = v9.IsA
                v12 = 'BasePart'
                v10 = v10(v11, v12)
                if not (v10) then _pc = 69 else _pc = 38 end
              elseif _pc == 38 then
                _pc = 69
              elseif _pc == 39 then
                v10 = v9.Name
                if not (v10 == 'Coin_Server') then _pc = 69 else _pc = 41 end
              elseif _pc == 41 then
                _pc = 69
              elseif _pc == 42 then
                v10 = v9.Coin
                v10 = v10.BrickColor
                v11 = BrickColor
                v11 = v11.new
                v12 = 'Really black'
                v11 = v11(v12)
                if not (v10.BrickColor == BrickColor.new('Really black')) then _pc = 69 else _pc = 49 end
              elseif _pc == 49 then
                _pc = 69
              elseif _pc == 50 then
                v11 = v9
                v10 = v9.FindFirstChild
                v12 = 'RareEffect'
                v10 = v10(v11, v12, true)
                v13 = true
                if not (not v10) then _pc = 69 else _pc = 55 end
              elseif _pc == 55 then
                _pc = 69
              elseif _pc == 56 then
                v10 = up0
                v10 = v10.Character
                v10 = v10.HumanoidRootPart
                v10 = v10.Position
                v11 = v9.Position
                v10 = v10 - v11
                v10 = v10.magnitude
                v11 = up1
                if v10 < v11 then _pc = 67 else _pc = 65 end
              elseif _pc == 65 then
                _pc = 67
              elseif _pc == 66 then
                _pc = 69
              elseif _pc == 67 then
                up0 = v9
                up0 = v10
                _pc = 69
              elseif _pc == 69 then
                local _it = {v5(v6, v7)}
                v8 = _it[1]
                v9 = _it[2]
                if v8 ~= nil then v7 = v8 end
                if v8 ~= nil then _pc = 34 else _pc = 70 end
              elseif _pc == 70 then
                _pc = 34
              elseif _pc == 71 then
                v5 = up2
                if not (not v5) then _pc = 75 else _pc = 73 end
              elseif _pc == 73 then
                _pc = 75
              elseif _pc == 74 then
                _pc = 173
              elseif _pc == 75 then
                v6 = v5.FindFirstChild(v5, 'TouchInterest')
                v7 = v5
                v8 = 'TouchInterest'
                if not (v6) then _pc = 173 else _pc = 79 end
              elseif _pc == 79 then
                _pc = 173
              elseif _pc == 80 then
                v6 = v5.CFrame * CFrame.Angles(math.pi / 2, 0, 0) + Vector3.new(0, -5, 0)
                local _r = {v7(v8)}  -- multret: arg range approximated
                v7 = _r[1]
                v8 = _r[2]
                v9 = _r[3]
                v10 = 0
                _pc = 110
              elseif _pc == 104 then
                v13 = v11
                v12 = v11.IsA
                v14 = 'BasePart'
                v12 = v12(v13, v14)
                if not (v12) then _pc = 110 else _pc = 108 end
              elseif _pc == 108 then
                _pc = 110
              elseif _pc == 109 then
                -- INVALID (MoonSec filler): v11.CanCollide = <expr?>
                _pc = 110
              elseif _pc == 110 then
                local _it = {v7(v8, v9)}
                v10 = _it[1]
                v11 = _it[2]
                if v10 ~= nil then v9 = v10 end
                if v10 ~= nil then _pc = 104 else _pc = 111 end
              elseif _pc == 111 then
                _pc = 104
              elseif _pc == 112 then
                -- INVALID (MoonSec filler): Instance.new('BodyVelocity').Name = ?B?
                Instance.new('BodyVelocity').Parent = up0.Character.HumanoidRootPart
                v9 = 100000
                v10 = 100000
                v11 = 100000
                Instance.new('BodyVelocity').MaxForce = Vector3.new(v9, v10, v11)
                v9 = 0
                v10 = 0
                v11 = 0
                Instance.new('BodyVelocity').Velocity = Vector3.new(v9, v10, v11)
                v7 = Instance.new('BodyVelocity')
                v8 = up1 / 30
                if not (10 < v8) then _pc = 148 else _pc = 138 end
              elseif _pc == 138 then
                _pc = 148
              elseif _pc == 139 then
                v9 = wait
                v10 = 3
                v9(v10)
                v9 = up0
                v9 = v9.Character
                v9 = v9.HumanoidRootPart
                v10 = targetPosition
                v9.CFrame = v10
                _pc = 170
              elseif _pc == 148 then
                v9 = Tween
                v10 = v6
                v9(v10, 30)
                v9 = firetouchinterest
                v10 = up0
                v10 = v10.Character
                v10 = v10.HumanoidRootPart
                v9(v10, v5, 0)
                v9 = firetouchinterest
                v10 = up0
                v10 = v10.Character
                v10 = v10.HumanoidRootPart
                v9(v10, v5, 1)
                v5 = nil
                v9 = math
                v9 = v9.huge
                up0 = v9
                v11 = v5
                v12 = 1
                _pc = 170
              elseif _pc == 170 then
                wait(0.6)
                v9 = wait
                v10 = 0.6
                _pc = 173
              elseif _pc == 173 then
                local _it = {v0(v1, v2)}
                v3 = _it[1]
                v4 = _it[2]
                if v3 ~= nil then v2 = v3 end
                if v3 ~= nil then _pc = 11 else _pc = 174 end
              elseif _pc == 174 then
                _pc = 11
              elseif _pc == 175 then
                _pc = 212
              elseif _pc == 176 then
                v0 = game
                v0 = v0.Players
                v0 = v0.LocalPlayer
                v0 = v0.Character
                v0 = v0.HumanoidRootPart
                v1 = v0
                v0 = v0.FindFirstChild
                v2 = 'BodyClip'
                v0 = v0(v1, v2)
                if not (v0) then _pc = 196 else _pc = 185 end
              elseif _pc == 185 then
                _pc = 196
              elseif _pc == 186 then
                v0 = game
                v0 = v0.Players
                v0 = v0.LocalPlayer
                v0 = v0.Character
                v0 = v0.HumanoidRootPart
                v1 = v0
                v0 = v0.FindFirstChild
                v2 = 'BodyClip'
                v0 = v0(v1, v2)
                v1 = v0
                v0 = v0.Destroy
                v0(v1)
                _pc = 196
              elseif _pc == 196 then
                v0 = pairs
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                v2 = _r[3]
                _pc = 210
              elseif _pc == 203 then
                v6 = v4
                v5 = v4.IsA
                v7 = 'BasePart'
                v5 = v5(v6, v7)
                if not (not v5) then _pc = 209 else _pc = 207 end
              elseif _pc == 207 then
                _pc = 209
              elseif _pc == 208 then
                _pc = 210
              elseif _pc == 209 then
                -- INVALID (MoonSec filler): v4.CanCollide = <expr?>
                _pc = 210
              elseif _pc == 210 then
                local _it = {v0(v1, v2)}
                v3 = _it[1]
                v4 = _it[2]
                if v3 ~= nil then v2 = v3 end
                if v3 ~= nil then _pc = 203 else _pc = 211 end
              elseif _pc == 211 then
                _pc = 203
              elseif _pc == 212 then
                return
              else
                return
              end
            end
          end
          v1(v2)
        end
        return
      end
      v19.Callback = v20
      v20 = {}
      -- INVALID (MoonSec filler): v20.Name = ?A?
      -- INVALID (MoonSec filler): v20.Info = ?G?
      -- INVALID (MoonSec filler): v20.CurrentValue = <expr?>
      v20.SectionParent = v15
      -- INVALID (MoonSec filler): v20.Flag = ?G?
      v17 = v17(v18, v19)
      v18 = v7.CreateToggle
      v19 = v7
      v21 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7, v8
        v1 = _G
        -- INVALID (MoonSec filler): v1.GoodMobileRareEggPriority = <expr?>
        while true do
          v1 = wait()
          if not (v1) then break end
          do break end  -- [FIXED] break/return must end its block
          v1 = pcall
          v2 = function()
            local v0, v1, v2, v3, v4, v5, v6, v7, v8
            local _pc = 0
            while true do
              if _pc == 0 then
                v0 = _G
                v0 = v0.GoodMobileRareEggPriority
                if not (not v0.GoodMobileRareEggPriority) then _pc = 5 else _pc = 3 end
              elseif _pc == 3 then
                _pc = 5
              elseif _pc == 4 then
                _pc = 49
              elseif _pc == 5 then
                v0 = pairs
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                v2 = _r[3]
                _pc = 47
              elseif _pc == 12 then
                v5 = _G
                v5 = v5.GoodMobileRareEggPriority
                if not (v5.GoodMobileRareEggPriority) then _pc = 47 else _pc = 15 end
              elseif _pc == 15 then
                _pc = 47
              elseif _pc == 16 then
                v5 = v4.IsA
                v5 = v5(v4, 'BasePart')
                v6 = v4
                v7 = 'BasePart'
                if not (v5) then _pc = 47 else _pc = 20 end
              elseif _pc == 20 then
                _pc = 47
              elseif _pc == 21 then
                v5 = v4.Name
                if not (v5 == 'Coin_Server') then _pc = 47 else _pc = 23 end
              elseif _pc == 23 then
                _pc = 47
              elseif _pc == 24 then
                v6 = v4
                v5 = v4.FindFirstChild
                v7 = 'RareEffect'
                v5 = v5(v6, v7, true)
                v8 = true
                if not (not v5) then _pc = 31 else _pc = 29 end
              elseif _pc == 29 then
                _pc = 31
              elseif _pc == 30 then
                _pc = 47
              elseif _pc == 31 then
                print('working')
                v6 = _G.GoodMobileRareEggPriority
                v7 = 'working'
                if not (v6.GoodMobileRareEggPriority) then _pc = 47 else _pc = 37 end
              elseif _pc == 37 then
                _pc = 47
              elseif _pc == 38 then
                up0.Character.HumanoidRootPart.CFrame = v4.CFrame
                task.wait(1)
                v6 = task.wait
                v7 = 1
                _pc = 47
              elseif _pc == 47 then
                local _it = {v0(v1, v2)}
                v3 = _it[1]
                v4 = _it[2]
                if v3 ~= nil then v2 = v3 end
                if v3 ~= nil then _pc = 12 else _pc = 48 end
              elseif _pc == 48 then
                _pc = 12
              elseif _pc == 49 then
                return
              else
                return
              end
            end
          end
          v1(v2)
          v1 = task
          v1 = v1.wait
          v1(1)
          v2 = 1
        end
        return
      end
      v20.Callback = v21
      v22 = {}
      -- INVALID (MoonSec filler): v22.Name = ?C?
      -- INVALID (MoonSec filler): v22.Info = ?E?
      -- INVALID (MoonSec filler): v22.CurrentValue = <expr?>
      v22.SectionParent = v7.CreateSection(v7, 'Bad Mobile', false)
      -- INVALID (MoonSec filler): v22.Flag = ?M?
      v18 = v18(v19, v20)
      v19 = v7.CreateSection(v7, 'Bad Mobile', false)
      v20 = v7.CreateToggle
      v21 = v7
      v23 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12
        local v13, v14
        v1 = _G
        v1.MobileCoinFarm = v0
        while true do
          v1 = wait()
          if not (v1) then break end
          do break end  -- [FIXED] break/return must end its block
          v1 = pcall
          v2 = function()
            local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
            local v12, v13, v14
            local _pc = 0
            while true do
              if _pc == 0 then
                v0 = _G
                v0 = v0.MobileCoinFarm
                if not (v0.MobileCoinFarm) then _pc = 180 else _pc = 3 end
              elseif _pc == 3 then
                _pc = 180
              elseif _pc == 4 then
                v0 = pairs
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                v2 = _r[3]
                _pc = 178
              elseif _pc == 11 then
                v5 = v4.Character
                if not (v5) then _pc = 178 else _pc = 13 end
              elseif _pc == 13 then
                _pc = 178
              elseif _pc == 14 then
                v5 = v4.Backpack
                v6 = v5
                v5 = v5.findFirstChild
                v7 = 'Knife'
                v5 = v5(v6, v7)
                if not (not v5) then _pc = 26 else _pc = 19 end
              elseif _pc == 19 then
                _pc = 26
              elseif _pc == 20 then
                v5 = v4.Character
                v6 = v5
                v5 = v5.findFirstChild
                v7 = 'Knife'
                v5 = v5(v6, v7)
                if not (v5) then _pc = 143 else _pc = 25 end
              elseif _pc == 25 then
                _pc = 143
              elseif _pc == 26 then
                v5 = game.Workspace
                local _r = {v6(v7)}  -- multret: arg range approximated
                v6 = _r[1]
                v7 = _r[2]
                v8 = _r[3]
                _pc = 64
              elseif _pc == 33 then
                v12 = v10
                v11 = v10.IsA
                v13 = 'BasePart'
                v11 = v11(v12, v13)
                if not (not v11) then _pc = 39 else _pc = 37 end
              elseif _pc == 37 then
                _pc = 39
              elseif _pc == 38 then
                _pc = 64
              elseif _pc == 39 then
                v11 = v10.Name
                if not (v11 == 'Coin_Server') then _pc = 64 else _pc = 41 end
              elseif _pc == 41 then
                _pc = 64
              elseif _pc == 42 then
                v11 = v10.Coin
                v11 = v11.BrickColor
                v12 = BrickColor
                v12 = v12.new
                v13 = 'Bright yellow'
                v12 = v12(v13)
                if not (v11.BrickColor ~= BrickColor.new('Bright yellow')) then _pc = 51 else _pc = 49 end
              elseif _pc == 49 then
                _pc = 51
              elseif _pc == 50 then
                _pc = 64
              elseif _pc == 51 then
                v11 = up0
                v11 = v11.Character
                v11 = v11.HumanoidRootPart
                v11 = v11.Position
                v12 = v10.Position
                v11 = v11 - v12
                v11 = v11.magnitude
                v12 = up1
                if v11 < v12 then _pc = 62 else _pc = 60 end
              elseif _pc == 60 then
                _pc = 62
              elseif _pc == 61 then
                _pc = 64
              elseif _pc == 62 then
                up0 = v10
                up0 = v11
                _pc = 64
              elseif _pc == 64 then
                local _it = {v6(v7, v8)}
                v9 = _it[1]
                v10 = _it[2]
                if v9 ~= nil then v8 = v9 end
                if v9 ~= nil then _pc = 33 else _pc = 65 end
              elseif _pc == 65 then
                _pc = 33
              elseif _pc == 66 then
                v6 = up2
                if not (v6) then _pc = 178 else _pc = 68 end
              elseif _pc == 68 then
                _pc = 178
              elseif _pc == 69 then
                v6 = up2.CFrame * CFrame.Angles(math.pi / 2, 0, 0)
                local _r = {v7(v8)}  -- multret: arg range approximated
                v7 = _r[1]
                v8 = _r[2]
                v9 = _r[3]
                v10 = 0
                _pc = 93
              elseif _pc == 87 then
                v13 = v11
                v12 = v11.IsA
                v14 = 'BasePart'
                v12 = v12(v13, v14)
                if not (v12) then _pc = 93 else _pc = 91 end
              elseif _pc == 91 then
                _pc = 93
              elseif _pc == 92 then
                -- INVALID (MoonSec filler): v11.CanCollide = <expr?>
                _pc = 93
              elseif _pc == 93 then
                local _it = {v7(v8, v9)}
                v10 = _it[1]
                v11 = _it[2]
                if v10 ~= nil then v9 = v10 end
                if v10 ~= nil then _pc = 87 else _pc = 94 end
              elseif _pc == 94 then
                _pc = 87
              elseif _pc == 95 then
                -- INVALID (MoonSec filler): Instance.new('BodyVelocity').Name = ?B?
                Instance.new('BodyVelocity').Parent = up0.Character.HumanoidRootPart
                v9 = 100000
                v10 = 100000
                v11 = 100000
                Instance.new('BodyVelocity').MaxForce = Vector3.new(v9, v10, v11)
                v9 = 0
                v10 = 0
                v11 = 0
                Instance.new('BodyVelocity').Velocity = Vector3.new(v9, v10, v11)
                v7 = Instance.new('BodyVelocity')
                v8 = up1 / 30
                if not (10 < v8) then _pc = 130 else _pc = 121 end
              elseif _pc == 121 then
                _pc = 130
              elseif _pc == 122 then
                v9 = wait
                v10 = 3
                v9(v10)
                v9 = up0
                v9 = v9.Character
                v9 = v9.HumanoidRootPart
                v9.CFrame = v6
                _pc = 139
              elseif _pc == 130 then
                v9 = Tween
                v10 = v6
                v9(v10, 30)
                v9 = nil
                closestMobileCoin = v9
                v9 = math
                v9 = v9.huge
                up0 = v9
                v11 = 30
                _pc = 139
              elseif _pc == 139 then
                wait(0.6)
                v9 = wait
                v10 = 0.6
                _pc = 178
              elseif _pc == 143 then
                v5 = game
                v5 = v5.Players
                v5 = v5.LocalPlayer
                v5 = v5.Character
                v5 = v5.HumanoidRootPart
                v6 = v5
                v5 = v5.FindFirstChild
                v7 = 'BodyClip'
                v5 = v5(v6, v7)
                if not (v5) then _pc = 163 else _pc = 152 end
              elseif _pc == 152 then
                _pc = 163
              elseif _pc == 153 then
                v5 = game
                v5 = v5.Players
                v5 = v5.LocalPlayer
                v5 = v5.Character
                v5 = v5.HumanoidRootPart
                v6 = v5
                v5 = v5.FindFirstChild
                v7 = 'BodyClip'
                v5 = v5(v6, v7)
                v6 = v5
                v5 = v5.Destroy
                v5(v6)
                _pc = 163
              elseif _pc == 163 then
                local _r = {v5(v6)}  -- multret: arg range approximated
                v5 = _r[1]
                v6 = _r[2]
                v7 = _r[3]
                _pc = 176
              elseif _pc == 170 then
                v11 = v9
                v10 = v9.IsA
                v12 = 'BasePart'
                v10 = v10(v11, v12)
                if not (v10) then _pc = 176 else _pc = 174 end
              elseif _pc == 174 then
                _pc = 176
              elseif _pc == 175 then
                -- INVALID (MoonSec filler): v9.CanCollide = <expr?>
                _pc = 176
              elseif _pc == 176 then
                local _it = {v5(v6, v7)}
                v8 = _it[1]
                v9 = _it[2]
                if v8 ~= nil then v7 = v8 end
                if v8 ~= nil then _pc = 170 else _pc = 177 end
              elseif _pc == 177 then
                _pc = 170
              elseif _pc == 178 then
                local _it = {v0(v1, v2)}
                v3 = _it[1]
                v4 = _it[2]
                if v3 ~= nil then v2 = v3 end
                if v3 ~= nil then _pc = 11 else _pc = 179 end
              elseif _pc == 179 then
                _pc = 11
              elseif _pc == 180 then
                return
              else
                return
              end
            end
          end
          v1(v2)
        end
        return
      end
      v22.Callback = v23
      v23 = {}
      -- INVALID (MoonSec filler): v23.Name = ?E?
      -- INVALID (MoonSec filler): v23.Info = ?E?
      -- INVALID (MoonSec filler): v23.CurrentValue = <expr?>
      v23.SectionParent = v19
      -- INVALID (MoonSec filler): v23.Flag = ?M?
      v20 = v20(v21, v22)
      v21 = v7.CreateToggle
      v22 = v7
      v24 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12
        local v13, v14
        v1 = _G
        v1.MobileEggFarm = v0
        while true do
          v1 = wait()
          if not (v1) then break end
          do break end  -- [FIXED] break/return must end its block
          v1 = pcall
          v2 = function()
            local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
            local v12, v13, v14
            local _pc = 0
            while true do
              if _pc == 0 then
                v0 = _G
                v0 = v0.MobileEggFarm
                if not (not v0.MobileEggFarm) then _pc = 5 else _pc = 3 end
              elseif _pc == 3 then
                _pc = 5
              elseif _pc == 4 then
                _pc = 161
              elseif _pc == 5 then
                v0 = pairs
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                v2 = _r[3]
                _pc = 158
              elseif _pc == 12 then
                v5 = v4.Character
                if not (not v5) then _pc = 16 else _pc = 14 end
              elseif _pc == 14 then
                _pc = 16
              elseif _pc == 15 then
                _pc = 158
              elseif _pc == 16 then
                v5 = v4.Backpack
                v6 = v5
                v5 = v5.findFirstChild
                v7 = 'Knife'
                v5 = v5(v6, v7)
                if not (not v5) then _pc = 28 else _pc = 21 end
              elseif _pc == 21 then
                _pc = 28
              elseif _pc == 22 then
                v5 = v4.Character
                v6 = v5
                v5 = v5.findFirstChild
                v7 = 'Knife'
                v5 = v5(v6, v7)
                if not (v5) then _pc = 158 else _pc = 27 end
              elseif _pc == 27 then
                _pc = 158
              elseif _pc == 28 then
                local _r = {v5(v6)}  -- multret: arg range approximated
                v5 = _r[1]
                v6 = _r[2]
                v7 = _r[3]
                _pc = 72
              elseif _pc == 35 then
                v11 = v9
                v10 = v9.IsA
                v12 = 'BasePart'
                v10 = v10(v11, v12)
                if not (not v10) then _pc = 41 else _pc = 39 end
              elseif _pc == 39 then
                _pc = 41
              elseif _pc == 40 then
                _pc = 72
              elseif _pc == 41 then
                v10 = v9.Name
                if not (v10 ~= 'Coin_Server') then _pc = 45 else _pc = 43 end
              elseif _pc == 43 then
                _pc = 45
              elseif _pc == 44 then
                _pc = 72
              elseif _pc == 45 then
                v10 = v9.Coin
                v10 = v10.BrickColor
                v11 = BrickColor
                v11 = v11.new
                v12 = 'Really black'
                v11 = v11(v12)
                if not (v10.BrickColor == BrickColor.new('Really black')) then _pc = 72 else _pc = 52 end
              elseif _pc == 52 then
                _pc = 72
              elseif _pc == 53 then
                v11 = v9
                v10 = v9.FindFirstChild
                v12 = 'RareEffect'
                v10 = v10(v11, v12, true)
                v13 = true
                if not (v10) then _pc = 60 else _pc = 58 end
              elseif _pc == 58 then
                _pc = 60
              elseif _pc == 59 then
                _pc = 72
              elseif _pc == 60 then
                v10 = up0
                v10 = v10.Character
                v10 = v10.HumanoidRootPart
                v10 = v10.Position
                v11 = v9.Position
                v10 = v10 - v11
                v10 = v10.magnitude
                v11 = up1
                if not (v10 < v11) then _pc = 72 else _pc = 69 end
              elseif _pc == 69 then
                _pc = 72
              elseif _pc == 70 then
                up0 = v9
                up0 = v10
                _pc = 72
              elseif _pc == 72 then
                local _it = {v5(v6, v7)}
                v8 = _it[1]
                v9 = _it[2]
                if v8 ~= nil then v7 = v8 end
                if v8 ~= nil then _pc = 35 else _pc = 73 end
              elseif _pc == 73 then
                _pc = 35
              elseif _pc == 74 then
                v5 = up2
                if not (v5) then _pc = 158 else _pc = 76 end
              elseif _pc == 76 then
                _pc = 158
              elseif _pc == 77 then
                v7 = v5
                v6 = v5.FindFirstChild
                v8 = 'TouchInterest'
                v6 = v6(v7, v8)
                if not (not v6) then _pc = 83 else _pc = 81 end
              elseif _pc == 81 then
                _pc = 83
              elseif _pc == 82 then
                _pc = 158
              elseif _pc == 83 then
                v6 = v5.CFrame * CFrame.Angles(math.pi / 2, 0, 0)
                local _r = {v7(v8)}  -- multret: arg range approximated
                v7 = _r[1]
                v8 = _r[2]
                v9 = _r[3]
                v10 = 0
                _pc = 107
              elseif _pc == 100 then
                v13 = v11
                v12 = v11.IsA
                v14 = 'BasePart'
                v12 = v12(v13, v14)
                if not (not v12) then _pc = 106 else _pc = 104 end
              elseif _pc == 104 then
                _pc = 106
              elseif _pc == 105 then
                _pc = 107
              elseif _pc == 106 then
                -- INVALID (MoonSec filler): v11.CanCollide = <expr?>
                _pc = 107
              elseif _pc == 107 then
                local _it = {v7(v8, v9)}
                v10 = _it[1]
                v11 = _it[2]
                if v10 ~= nil then v9 = v10 end
                if v10 ~= nil then _pc = 100 else _pc = 108 end
              elseif _pc == 108 then
                _pc = 100
              elseif _pc == 109 then
                v7 = Instance
                v7 = v7.new
                v7 = v7('BodyVelocity')
                -- INVALID (MoonSec filler): v7.Name = ?B?
                v7.Parent = up0.Character.HumanoidRootPart
                v9 = 100000
                v10 = 100000
                v11 = 100000
                v7.MaxForce = Vector3.new(v9, v10, v11)
                v9 = 0
                v10 = 0
                v11 = 0
                v7.Velocity = Vector3.new(v9, v10, v11)
                v8 = up1 / 30
                if 10 < v8 then _pc = 137 else _pc = 135 end
              elseif _pc == 135 then
                _pc = 137
              elseif _pc == 136 then
                _pc = 146
              elseif _pc == 137 then
                v9 = wait
                v10 = 3
                v9(v10)
                v9 = up0
                v9 = v9.Character
                v9 = v9.HumanoidRootPart
                v10 = targetPosition
                v9.CFrame = v10
                _pc = 155
              elseif _pc == 146 then
                v9 = Tween
                v10 = v6
                v11 = 30
                v9(v10, v11)
                v9 = nil
                up0 = v9
                v9 = math
                v9 = v9.huge
                up0 = v9
                _pc = 155
              elseif _pc == 155 then
                v9 = wait
                v10 = 0.6
                v9(v10)
                _pc = 158
              elseif _pc == 158 then
                local _it = {v0(v1, v2)}
                v3 = _it[1]
                v4 = _it[2]
                if v3 ~= nil then v2 = v3 end
                if v3 ~= nil then _pc = 12 else _pc = 159 end
              elseif _pc == 159 then
                _pc = 12
              elseif _pc == 160 then
                _pc = 198
              elseif _pc == 161 then
                v0 = game
                v0 = v0.Players
                v0 = v0.LocalPlayer
                v0 = v0.Character
                v0 = v0.HumanoidRootPart
                v1 = v0
                v0 = v0.FindFirstChild
                v2 = 'BodyClip'
                v0 = v0(v1, v2)
                if not (not v0) then _pc = 172 else _pc = 170 end
              elseif _pc == 170 then
                _pc = 172
              elseif _pc == 171 then
                _pc = 182
              elseif _pc == 172 then
                v0 = game
                v0 = v0.Players
                v0 = v0.LocalPlayer
                v0 = v0.Character
                v0 = v0.HumanoidRootPart
                v1 = v0
                v0 = v0.FindFirstChild
                v2 = 'BodyClip'
                v0 = v0(v1, v2)
                v1 = v0
                v0 = v0.Destroy
                v0(v1)
                _pc = 182
              elseif _pc == 182 then
                v0 = pairs
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                v2 = _r[3]
                _pc = 196
              elseif _pc == 189 then
                v6 = v4
                v5 = v4.IsA
                v7 = 'BasePart'
                v5 = v5(v6, v7)
                if not (not v5) then _pc = 195 else _pc = 193 end
              elseif _pc == 193 then
                _pc = 195
              elseif _pc == 194 then
                _pc = 196
              elseif _pc == 195 then
                -- INVALID (MoonSec filler): v4.CanCollide = <expr?>
                _pc = 196
              elseif _pc == 196 then
                local _it = {v0(v1, v2)}
                v3 = _it[1]
                v4 = _it[2]
                if v3 ~= nil then v2 = v3 end
                if v3 ~= nil then _pc = 189 else _pc = 197 end
              elseif _pc == 197 then
                _pc = 189
              elseif _pc == 198 then
                return
              else
                return
              end
            end
          end
          v1(v2)
        end
        return
      end
      v23.Callback = v24
      v24 = {}
      -- INVALID (MoonSec filler): v24.Name = ?A?
      -- INVALID (MoonSec filler): v24.Info = ?G?
      -- INVALID (MoonSec filler): v24.CurrentValue = <expr?>
      v24.SectionParent = v19
      -- INVALID (MoonSec filler): v24.Flag = ?M?
      v21 = v21(v22, v23)
      v22 = v7.CreateToggle
      v23 = v7
      v25 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7, v8
        v1 = _G
        -- INVALID (MoonSec filler): v1.MobileRareEggPriority = <expr?>
        while true do
          v1 = wait()
          if not (v1) then break end
          do break end  -- [FIXED] break/return must end its block
          v1 = pcall
          v2 = function()
            local v0, v1, v2, v3, v4, v5, v6, v7, v8
            local _pc = 0
            while true do
              if _pc == 0 then
                v0 = _G
                v0 = v0.MobileRareEggPriority
                if not (v0.MobileRareEggPriority) then _pc = 49 else _pc = 3 end
              elseif _pc == 3 then
                _pc = 49
              elseif _pc == 4 then
                v0 = pairs
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                v2 = _r[3]
                _pc = 47
              elseif _pc == 11 then
                v5 = _G
                v5 = v5.MobileRareEggPriority
                if not (v5.MobileRareEggPriority) then _pc = 47 else _pc = 14 end
              elseif _pc == 14 then
                _pc = 47
              elseif _pc == 15 then
                v5 = v4.IsA
                v5 = v5(v4, 'BasePart')
                v6 = v4
                v7 = 'BasePart'
                if not (v5) then _pc = 47 else _pc = 19 end
              elseif _pc == 19 then
                _pc = 47
              elseif _pc == 20 then
                v5 = v4.Name
                if not (v5 ~= 'Coin_Server') then _pc = 24 else _pc = 22 end
              elseif _pc == 22 then
                _pc = 24
              elseif _pc == 23 then
                _pc = 47
              elseif _pc == 24 then
                v6 = v4
                v5 = v4.FindFirstChild
                v7 = 'RareEffect'
                v5 = v5(v6, v7, true)
                v8 = true
                if not (not v5) then _pc = 31 else _pc = 29 end
              elseif _pc == 29 then
                _pc = 31
              elseif _pc == 30 then
                _pc = 47
              elseif _pc == 31 then
                print('working')
                v6 = _G.MobileRareEggPriority
                v7 = 'working'
                if not (v6.MobileRareEggPriority) then _pc = 47 else _pc = 37 end
              elseif _pc == 37 then
                _pc = 47
              elseif _pc == 38 then
                up0.Character.HumanoidRootPart.CFrame = v4.CFrame
                task.wait(1)
                v6 = task.wait
                v7 = 1
                _pc = 47
              elseif _pc == 47 then
                local _it = {v0(v1, v2)}
                v3 = _it[1]
                v4 = _it[2]
                if v3 ~= nil then v2 = v3 end
                if v3 ~= nil then _pc = 11 else _pc = 48 end
              elseif _pc == 48 then
                _pc = 11
              elseif _pc == 49 then
                return
              else
                return
              end
            end
          end
          v1(v2)
          v1 = task
          v1 = v1.wait
          v1(1)
          v2 = 1
        end
        return
      end
      v24.Callback = v25
      v24 = v8
      v25 = 'Player Outline'
      v26 = false
      v24 = false
      v25 = false
      v26 = false
      v22 = v22(v23, v24)
      v23 = v8.CreateSection(v24, v25, v26)
      v27 = function()
        local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9
        local _pc = 0
        while true do
          if _pc == 0 then
            v0 = pairs
            local _r = {v0(v1)}  -- multret: arg range approximated
            v0 = _r[1]
            v1 = _r[2]
            v2 = _r[3]
            _pc = 85
          elseif _pc == 7 then
            v5 = v4.Character
            if not (v5) then _pc = 85 else _pc = 9 end
          elseif _pc == 9 then
            _pc = 85
          elseif _pc == 10 then
            v5 = v4.Backpack
            if not (not v5) then _pc = 14 else _pc = 12 end
          elseif _pc == 12 then
            _pc = 14
          elseif _pc == 13 then
            _pc = 85
          elseif _pc == 14 then
            v5 = v4.Character
            v6 = v5
            v5 = v5.FindFirstChild
            v7 = 'Highlight'
            v5 = v5(v6, v7)
            if not (v5) then _pc = 21 else _pc = 19 end
          elseif _pc == 19 then
            _pc = 21
          elseif _pc == 20 then
            _pc = 29
          elseif _pc == 21 then
            v6 = Instance
            v6 = v6.new
            v7 = 'Highlight'
            v6 = v6(v7)
            -- INVALID (MoonSec filler): v6.FillTransparency = <expr?>
            v7 = v4.Character
            v6.Parent = v7
            v5 = v6
            _pc = 29
          elseif _pc == 29 then
            v6 = v4.Backpack
            v7 = v6
            v6 = v6.findFirstChild
            v8 = 'Knife'
            v6 = v6(v7, v8)
            if not (v6) then _pc = 36 else _pc = 34 end
          elseif _pc == 34 then
            _pc = 36
          elseif _pc == 35 then
            _pc = 43
          elseif _pc == 36 then
            v6 = v4.Character
            v7 = v6
            v6 = v6.findFirstChild
            v8 = 'Knife'
            v6 = v6(v7, v8)
            if not (not v6) then _pc = 43 else _pc = 41 end
          elseif _pc == 41 then
            _pc = 43
          elseif _pc == 42 then
            _pc = 53
          elseif _pc == 43 then
            v5.OutlineColor = Color3.fromRGB(255, 0, 0)
            v5.Enabled = up0
            v6 = up0
            v7 = 255
            v8 = 0
            v9 = 0
            _pc = 85
          elseif _pc == 53 then
            v6 = v4.Backpack
            v7 = v6
            v6 = v6.findFirstChild
            v8 = 'Gun'
            v6 = v6(v7, v8)
            if not (not v6) then _pc = 66 else _pc = 58 end
          elseif _pc == 58 then
            _pc = 66
          elseif _pc == 59 then
            v6 = v4.Character
            v7 = v6
            v6 = v6.findFirstChild
            v8 = 'Gun'
            v6 = v6(v7, v8)
            if not (not v6) then _pc = 66 else _pc = 64 end
          elseif _pc == 64 then
            _pc = 66
          elseif _pc == 65 then
            _pc = 76
          elseif _pc == 66 then
            v5.OutlineColor = Color3.fromRGB(0, 0, 255)
            v5.Enabled = up1
            v6 = up1
            v7 = 0
            v8 = 0
            v9 = 255
            _pc = 85
          elseif _pc == 76 then
            v5.OutlineColor = Color3.fromRGB(0, 255, 0)
            v5.Enabled = up2
            v6 = up2
            v7 = 0
            v8 = 255
            v9 = 0
            _pc = 85
          elseif _pc == 85 then
            local _it = {v0(v1, v2)}
            v3 = _it[1]
            v4 = _it[2]
            if v3 ~= nil then v2 = v3 end
            if v3 ~= nil then _pc = 7 else _pc = 86 end
          elseif _pc == 86 then
            _pc = 7
          elseif _pc == 87 then
            return
          else
            return
          end
        end
      end
      v28 = game.Players.PlayerAdded.Connect
      v29 = game.Players.PlayerAdded
      v30 = function(v0)
        local v1, v2, v3
        v1 = v0.CharacterAdded.Connect
        v2 = v0.CharacterAdded
        v3 = function(v0)
          local v1
          up0()
          v1 = up0
          return
        end
        v1(v2, v3)
        return
      end
      v28(v29, v30)
      game.GetService(game, 'RunService').RenderStepped.Connect(game.GetService(game, 'RunService').RenderStepped, v27)
      v30 = {}
      -- INVALID (MoonSec filler): v30.Name = ?M?
      -- INVALID (MoonSec filler): v30.Info = ?O?
      -- INVALID (MoonSec filler): v30.CurrentValue = <expr?>
      v30.SectionParent = v23
      -- INVALID (MoonSec filler): v30.Flag = ?M?
      v28 = v8.CreateToggle
      v29 = v8
      v31 = function(v0)
        local v1
        up0 = v0
        up1()
        v1 = up1
        return
      end
      v30.Callback = v31
      v31 = {}
      -- INVALID (MoonSec filler): v31.Name = ?S?
      -- INVALID (MoonSec filler): v31.Info = ?O?
      -- INVALID (MoonSec filler): v31.CurrentValue = <expr?>
      v31.SectionParent = v23
      -- INVALID (MoonSec filler): v31.Flag = ?S?
      v28 = v28(v29, v30)
      v29 = v8.CreateToggle
      v30 = v8
      v32 = function(v0)
        local v1
        up0 = v0
        up1()
        v1 = up1
        return
      end
      v31.Callback = v32
      v32 = {}
      -- INVALID (MoonSec filler): v32.Name = ?I?
      -- INVALID (MoonSec filler): v32.Info = ?O?
      -- INVALID (MoonSec filler): v32.CurrentValue = <expr?>
      v32.SectionParent = v23
      -- INVALID (MoonSec filler): v32.Flag = ?I?
      v29 = v29(v30, v31)
      v30 = v8.CreateToggle
      v31 = v8
      v33 = function(v0)
        local v1
        up0 = v0
        up1()
        v1 = up1
        return
      end
      v32.Callback = v33
      v32 = v8
      v34 = false
      v32 = false
      v30 = v30(v31, v32)
      v31 = v8.CreateSection(v32, 'Player Text', v34)
      v33 = 'Player Text'
      v33 = function()
        local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
        local v12, v13, v14, v15
        v0 = spawn
        v1 = function()
          local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
          local v12, v13, v14, v15
          local _pc = 0
          while true do
            if _pc == 0 then
              v0 = up0
              if not (not v0) then _pc = 4 else _pc = 2 end
            elseif _pc == 2 then
              _pc = 4
            elseif _pc == 3 then
              _pc = 116
            elseif _pc == 4 then
              v0 = game
              v0 = v0.GetService
              v0 = v0(v0, 'Workspace')
              v0 = v0.CurrentCamera
              v3 = game.Players
              local _r = {v1(v0, v1, v2, v3)}  -- [FIXED] callee register reconstructed; arg range approximated
              v1 = _r[1]
              v2 = _r[2]
              v3 = _r[3]
              _pc = 110
            elseif _pc == 16 then
              v6 = v5.Character
              if not (v6) then _pc = 110 else _pc = 18 end
            elseif _pc == 18 then
              _pc = 110
            elseif _pc == 19 then
              v6 = v5.Character
              v6 = v6.FindFirstChild
              v6 = v6(v6, 'Head')
              v7 = v6
              v8 = 'Head'
              if not (v6) then _pc = 110 else _pc = 24 end
            elseif _pc == 24 then
              _pc = 110
            elseif _pc == 25 then
              v6 = v5.Character
              v6 = v6.HumanoidRootPart
              v6 = v6.Position
              v7 = v0.CFrame
              v7 = v7.Position
              v6 = v6 - v7
              v6 = v6.Magnitude
              v7 = Color3
              v7 = v7.fromRGB
              v8 = 255
              v9 = 255
              v10 = 255
              v7 = v7(v8, v9, v10)
              v8 = v5.Backpack
              v9 = v8
              v8 = v8.findFirstChild
              v10 = 'Knife'
              v8 = v8(v9, v10)
              if not (not v8) then _pc = 50 else _pc = 43 end
            elseif _pc == 43 then
              _pc = 50
            elseif _pc == 44 then
              v8 = v5.Character
              v9 = v8
              v8 = v8.findFirstChild
              v10 = 'Knife'
              v8 = v8(v9, v10)
              if not (v8) then _pc = 58 else _pc = 49 end
            elseif _pc == 49 then
              _pc = 58
            elseif _pc == 50 then
              v8 = Color3
              v8 = v8.fromRGB
              v9 = 255
              v10 = 0
              v11 = 0
              v8 = v8(v9, v10, v11)
              v7 = v8
              _pc = 86
            elseif _pc == 58 then
              v8 = v5.Backpack
              v9 = v8
              v8 = v8.findFirstChild
              v10 = 'Gun'
              v8 = v8(v9, v10)
              if not (v8) then _pc = 65 else _pc = 63 end
            elseif _pc == 63 then
              _pc = 65
            elseif _pc == 64 then
              _pc = 71
            elseif _pc == 65 then
              v8 = v5.Character
              v9 = v8
              v8 = v8.findFirstChild
              v10 = 'Gun'
              v8 = v8(v9, v10)
              if not (v8) then _pc = 79 else _pc = 70 end
            elseif _pc == 70 then
              _pc = 79
            elseif _pc == 71 then
              v8 = Color3
              v8 = v8.fromRGB
              v9 = 0
              v10 = 0
              v11 = 255
              v8 = v8(v9, v10, v11)
              v7 = v8
              _pc = 86
            elseif _pc == 79 then
              v8 = Color3
              v8 = v8.fromRGB
              v9 = 0
              v10 = 255
              v11 = 0
              v8 = v8(v9, v10, v11)
              v7 = v8
              _pc = 86
            elseif _pc == 86 then
              v10 = {}
              -- INVALID (MoonSec filler): v10.foldername = ?P?
              v10.instance = v5
              v10.adornee = v5.Character.Head
              -- INVALID (MoonSec filler): v10.offset = <expr?>
              v10.Text = v5.Name .. ' | ' .. tostring(math.floor, v6) .. ' studs'
              -- INVALID (MoonSec filler): v10.TransparencyVar = <expr?>
              -- INVALID (MoonSec filler): v10.SizeVar = <expr?>
              v10.ColorVar = v7
              up1.CreateNametag(up1, v10)
              v8 = up1.CreateNametag
              v9 = up1
              v11 = v5.Name .. ' | ' .. tostring(math.floor, v6) .. ' studs'
              v12 = ' | '
              v13 = tostring(math.floor, v6)
              v14 = ' studs'
              v15 = v6
              _pc = 110
            elseif _pc == 110 then
              local _it = {v1(v2, v3)}
              v4 = _it[1]
              v5 = _it[2]
              if v4 ~= nil then v3 = v4 end
              if v4 ~= nil then _pc = 16 else _pc = 111 end
            elseif _pc == 111 then
              _pc = 16
            elseif _pc == 112 then
              v1 = task
              v1 = v1.wait
              v1()
              _pc = 0
            elseif _pc == 116 then
              return
            else
              return
            end
          end
        end
        v0(v1)
        return
      end
      PlayerESP = v33
      v34 = v8
      v35 = {}
      -- INVALID (MoonSec filler): v35.Name = ?E?
      -- INVALID (MoonSec filler): v35.Info = ?A?
      -- INVALID (MoonSec filler): v35.CurrentValue = <expr?>
      v35.SectionParent = v31
      -- INVALID (MoonSec filler): v35.Flag = ?E?
      v33 = v8.CreateToggle
      v36 = function(v0)
        local v1, v2, v3
        local _pc = 0
        while true do
          if _pc == 0 then
            up0 = v0
            v1 = up0
            if not (v1) then _pc = 7 else _pc = 3 end
          elseif _pc == 3 then
            _pc = 7
          elseif _pc == 4 then
            PlayerESP()
            v1 = PlayerESP
            _pc = 24
          elseif _pc == 7 then
            v1 = game
            v1 = v1.Players
            v1 = v1.LocalPlayer
            v1 = v1.PlayerGui
            v2 = v1
            v1 = v1.FindFirstChild
            v1 = v1(v2, 'PlayerNameESP')
            v3 = 'PlayerNameESP'
            if not (not v1) then _pc = 17 else _pc = 15 end
          elseif _pc == 15 then
            _pc = 17
          elseif _pc == 16 then
            _pc = 24
          elseif _pc == 17 then
            game.Players.LocalPlayer.PlayerGui.PlayerNameESP:Destroy()
            v1 = game.Players.LocalPlayer.PlayerGui.PlayerNameESP.Destroy
            v2 = game.Players.LocalPlayer.PlayerGui.PlayerNameESP
            _pc = 24
          elseif _pc == 24 then
            return
          else
            return
          end
        end
      end
      v35.Callback = v36
      v34 = false
      v36 = game
      v37 = 'Players'
      v36 = game.GetService(v36, v37)
      v36 = game
      v36 = v36.Players
      v36 = v36.LocalPlayer
      v37 = game
      v37 = v37.GetService
      v37 = v37(v37, 'Workspace')
      v37 = v37.CurrentCamera
      v41 = game.Players
      local _r = {v37(v38, v39, v40, v41)}  -- multret: arg range approximated
      v41 = _r[5]
      v33 = v33(v34, v35)
      v35 = game.GetService(v36, v37).GetChildren(v36)
      v38 = Workspace.CurrentCamera
      local _r = {v37(v38, v39, v40, v41)}  -- multret: arg range approximated
      v39 = _r[3]
      v40 = _r[4]
      _pc = 395
    elseif _pc == 375 then
      v44 = Drawing
      v44 = v44.new
      v45 = 'Line'
      v44 = v44(v45)
      -- INVALID (MoonSec filler): v44.Visible = <expr?>
      -- INVALID (MoonSec filler): v44.Thickness = <expr?>
      -- INVALID (MoonSec filler): v44.Transparency = <expr?>
      v45 = function()
        local v0, v1, v2, v3, v4, v5, v6
        v0 = game.GetService(game, 'RunService').RenderStepped.Connect
        v1 = game.GetService(game, 'RunService').RenderStepped
        v2 = 'RunService'
        v2 = function()
          local v0, v1, v2, v3, v4, v5, v6
          local _pc = 0
          while true do
            if _pc == 0 then
              v0 = up0
              v0 = v0.Character
              if not (v0 == nil) then _pc = 5 else _pc = 3 end
            elseif _pc == 3 then
              _pc = 5
            elseif _pc == 4 then
              _pc = 127
            elseif _pc == 5 then
              v0 = up0
              v0 = v0.Character
              v1 = v0
              v0 = v0.FindFirstChild
              v2 = 'Humanoid'
              v0 = v0(v1, v2)
              if not (v0.Character.FindFirstChild(v0.Character, 'Humanoid') == nil) then _pc = 13 else _pc = 11 end
            elseif _pc == 11 then
              _pc = 13
            elseif _pc == 12 then
              _pc = 127
            elseif _pc == 13 then
              v0 = up0
              v0 = v0.Character
              v1 = v0
              v0 = v0.FindFirstChild
              v0 = v0(v1, 'HumanoidRootPart')
              v2 = 'HumanoidRootPart'
              if not (v0.Character.FindFirstChild(v0.Character, 'HumanoidRootPart') == nil) then _pc = 21 else _pc = 19 end
            elseif _pc == 19 then
              _pc = 21
            elseif _pc == 20 then
              _pc = 127
            elseif _pc == 21 then
              v0 = up0
              v1 = up1
              _pc = 127
            elseif _pc == 24 then
              _pc = 127
            elseif _pc == 25 then
              v0 = up0
              v0 = v0.Character
              v0 = v0.Humanoid
              v0 = v0.Health
              if not (0 < v0) then _pc = 127 else _pc = 30 end
            elseif _pc == 30 then
              _pc = 127
            elseif _pc == 31 then
              v0 = up0
              v0 = v0.Backpack
              if not (v0.Backpack) then _pc = 125 else _pc = 34 end
            elseif _pc == 34 then
              _pc = 125
            elseif _pc == 35 then
              v0 = up2
              v0 = v0.worldToViewportPoint
              v2 = up0
              v2 = v2.Character
              v2 = v2.HumanoidRootPart
              v2 = v2.Position
              local _r = {v0(v1, v2)}  -- multret: arg range approximated
              v0 = _r[1]
              v1 = _r[2]
              if not (_r[2]) then _pc = 122 else _pc = 43 end
            elseif _pc == 43 then
              _pc = 122
            elseif _pc == 44 then
              v2 = up3
              v3 = Vector2
              v3 = v3.new
              v4 = up2
              v4 = v4.ViewportSize
              v4 = v4.X
              v4 = v4 / 2
              v5 = up2
              v5 = v5.ViewportSize
              v5 = v5.Y
              v5 = v5 / 2
              v3 = v3(v4, v5)
              v2.From = v3
              v2 = up3
              v3 = Vector2
              v3 = v3.new
              v4 = v0.X
              v5 = v0.Y
              v3 = v3(v4, v5)
              v2.To = v3
              v2 = up3
              v3 = up4
              v2.Visible = v3
              v2 = up0
              v2 = v2.Backpack
              v3 = v2
              v2 = v2.findFirstChild
              v4 = 'Knife'
              v2 = v2(v3, v4)
              if not (not v2.Backpack.findFirstChild(v2.Backpack, 'Knife')) then _pc = 81 else _pc = 73 end
            elseif _pc == 73 then
              _pc = 81
            elseif _pc == 74 then
              v2 = up0
              v2 = v2.Character
              v3 = v2
              v2 = v2.findFirstChild
              v4 = 'Knife'
              v2 = v2(v3, v4)
              if not (v2.Character.findFirstChild(v2.Character, 'Knife')) then _pc = 90 else _pc = 80 end
            elseif _pc == 80 then
              _pc = 90
            elseif _pc == 81 then
              up3.Color = Color3.new(1, 0, 0)
              v2 = up3
              v3 = Color3.new(1, 0, 0)
              v4 = 1
              v5 = 0
              v6 = 0
              _pc = 127
            elseif _pc == 90 then
              v2 = up0
              v2 = v2.Backpack
              v3 = v2
              v2 = v2.findFirstChild
              v4 = 'Gun'
              v2 = v2(v3, v4)
              if not (not v2.Backpack.findFirstChild(v2.Backpack, 'Gun')) then _pc = 104 else _pc = 96 end
            elseif _pc == 96 then
              _pc = 104
            elseif _pc == 97 then
              v2 = up0
              v2 = v2.Character
              v3 = v2
              v2 = v2.findFirstChild
              v4 = 'Gun'
              v2 = v2(v3, v4)
              if not (v2.Character.findFirstChild(v2.Character, 'Gun')) then _pc = 113 else _pc = 103 end
            elseif _pc == 103 then
              _pc = 113
            elseif _pc == 104 then
              up3.Color = Color3.new(0, 0, 1)
              v2 = up3
              v3 = Color3.new(0, 0, 1)
              v4 = 0
              v5 = 0
              v6 = 1
              _pc = 127
            elseif _pc == 113 then
              up3.Color = Color3.new(0, 1, 0)
              v2 = up3
              v3 = Color3.new(0, 1, 0)
              v4 = 0
              v5 = 1
              v6 = 0
              _pc = 127
            elseif _pc == 122 then
              -- INVALID (MoonSec filler): up3.Visible = <expr?>
              v2 = up3
              _pc = 127
            elseif _pc == 125 then
              v0 = up3
              -- INVALID (MoonSec filler): v0.Visible = <expr?>
              _pc = 127
            elseif _pc == 127 then
              return
            else
              return
            end
          end
        end
        v0(v1, v2)
        return
      end
      v46 = coroutine
      v46 = v46.wrap
      v47 = v45
      v46 = v46(v47)
      v46()
      _pc = 395
    elseif _pc == 395 then
      local _it = {v39(v40, v41)}
      v42 = _it[1]
      v43 = _it[2]
      if v42 ~= nil then v41 = v42 end
      if v42 ~= nil then _pc = 375 else _pc = 396 end
    elseif _pc == 396 then
      _pc = 375
    elseif _pc == 397 then
      v39 = game.Players.PlayerAdded.Connect
      v40 = game.Players.PlayerAdded
      v41 = function(v0)
        local v1, v2, v3, v4, v5, v6
        v1 = Drawing
        v1 = v1.new
        v1 = v1('Line')
        -- INVALID (MoonSec filler): v1.Visible = <expr?>
        -- INVALID (MoonSec filler): v1.Thickness = <expr?>
        -- INVALID (MoonSec filler): v1.Transparency = <expr?>
        v2 = 'Line'
        v2 = function()
          local v0, v1, v2, v3, v4, v5, v6
          v0 = game.GetService(game, 'RunService').RenderStepped.Connect
          v1 = game.GetService(game, 'RunService').RenderStepped
          v2 = 'RunService'
          v2 = function()
            local v0, v1, v2, v3, v4, v5, v6
            local _pc = 0
            while true do
              if _pc == 0 then
                v0 = up0
                v0 = v0.Character
                if not (v0 ~= nil) then _pc = 123 else _pc = 3 end
              elseif _pc == 3 then
                _pc = 123
              elseif _pc == 4 then
                v0 = up0
                v0 = v0.Character
                v1 = v0
                v0 = v0.FindFirstChild
                v2 = 'Humanoid'
                v0 = v0(v1, v2)
                if not (v0.Character.FindFirstChild(v0.Character, 'Humanoid') == nil) then _pc = 12 else _pc = 10 end
              elseif _pc == 10 then
                _pc = 12
              elseif _pc == 11 then
                _pc = 123
              elseif _pc == 12 then
                v0 = up0
                v0 = v0.Character
                v0 = v0.FindFirstChild
                v0 = v0(v0, 'HumanoidRootPart')
                v1 = v0
                v2 = 'HumanoidRootPart'
                if not (v0.Character.FindFirstChild(v0.Character, 'HumanoidRootPart') ~= nil) then _pc = 123 else _pc = 18 end
              elseif _pc == 18 then
                _pc = 123
              elseif _pc == 19 then
                v0 = up0
                v1 = up1
                if not (v0 == v1) then _pc = 24 else _pc = 22 end
              elseif _pc == 22 then
                _pc = 24
              elseif _pc == 23 then
                _pc = 123
              elseif _pc == 24 then
                v0 = up0
                v0 = v0.Character
                v0 = v0.Humanoid
                v0 = v0.Health
                if 0 < v0 then _pc = 31 else _pc = 29 end
              elseif _pc == 29 then
                _pc = 31
              elseif _pc == 30 then
                _pc = 123
              elseif _pc == 31 then
                v0 = up2
                v0 = v0.worldToViewportPoint
                v2 = up0
                v2 = v2.Character
                v2 = v2.HumanoidRootPart
                v2 = v2.Position
                local _r = {v0(v1, v2)}  -- multret: arg range approximated
                v0 = _r[1]
                v1 = _r[2]
                if not (_r[2]) then _pc = 120 else _pc = 39 end
              elseif _pc == 39 then
                _pc = 120
              elseif _pc == 40 then
                v2 = up3
                v3 = Vector2
                v3 = v3.new
                v4 = up2
                v4 = v4.ViewportSize
                v4 = v4.X
                v4 = v4 / 2
                v5 = up2
                v5 = v5.ViewportSize
                v5 = v5.Y
                v5 = v5 / 2
                v3 = v3(v4, v5)
                v2.From = v3
                v2 = up3
                v3 = Vector2
                v3 = v3.new
                v4 = v0.X
                v5 = v0.Y
                v3 = v3(v4, v5)
                v2.To = v3
                v2 = up3
                v3 = up4
                v2.Visible = v3
                v2 = up0
                v2 = v2.Backpack
                v3 = v2
                v2 = v2.findFirstChild
                v4 = 'Knife'
                v2 = v2(v3, v4)
                if not (v2.Backpack.findFirstChild(v2.Backpack, 'Knife')) then _pc = 71 else _pc = 69 end
              elseif _pc == 69 then
                _pc = 71
              elseif _pc == 70 then
                _pc = 78
              elseif _pc == 71 then
                v2 = up0
                v2 = v2.Character
                v3 = v2
                v2 = v2.findFirstChild
                v4 = 'Knife'
                v2 = v2(v3, v4)
                if not (v2.Character.findFirstChild(v2.Character, 'Knife')) then _pc = 87 else _pc = 77 end
              elseif _pc == 77 then
                _pc = 87
              elseif _pc == 78 then
                up3.Color = Color3.new(1, 0, 0)
                v2 = up3
                v3 = Color3.new(1, 0, 0)
                v4 = 1
                v5 = 0
                v6 = 0
                _pc = 125
              elseif _pc == 87 then
                v2 = up0
                v2 = v2.Backpack
                v3 = v2
                v2 = v2.findFirstChild
                v4 = 'Gun'
                v2 = v2(v3, v4)
                if not (not v2.Backpack.findFirstChild(v2.Backpack, 'Gun')) then _pc = 102 else _pc = 93 end
              elseif _pc == 93 then
                _pc = 102
              elseif _pc == 94 then
                v2 = up0
                v2 = v2.Character
                v3 = v2
                v2 = v2.findFirstChild
                v4 = 'Gun'
                v2 = v2(v3, v4)
                if not (not v2.Character.findFirstChild(v2.Character, 'Gun')) then _pc = 102 else _pc = 100 end
              elseif _pc == 100 then
                _pc = 102
              elseif _pc == 101 then
                _pc = 111
              elseif _pc == 102 then
                up3.Color = Color3.new(0, 0, 1)
                v2 = up3
                v3 = Color3.new(0, 0, 1)
                v4 = 0
                v5 = 0
                v6 = 1
                _pc = 125
              elseif _pc == 111 then
                up3.Color = Color3.new(0, 1, 0)
                v2 = up3
                v3 = Color3.new(0, 1, 0)
                v4 = 0
                v5 = 1
                v6 = 0
                _pc = 125
              elseif _pc == 120 then
                -- INVALID (MoonSec filler): up3.Visible = <expr?>
                v2 = up3
                _pc = 125
              elseif _pc == 123 then
                v0 = up3
                -- INVALID (MoonSec filler): v0.Visible = <expr?>
                _pc = 125
              elseif _pc == 125 then
                return
              else
                return
              end
            end
          end
          v0(v1, v2)
          return
        end
        coroutine.wrap(v2)()
        v3 = coroutine.wrap(v2)
        v4 = v2
        return
      end
      v39(v40, v41)
      v41 = 'Player Tracer\'s'
      v42 = false
      v41 = v8
      v42 = {}
      -- INVALID (MoonSec filler): v42.Name = ?E?
      -- INVALID (MoonSec filler): v42.Info = ?A?
      -- INVALID (MoonSec filler): v42.CurrentValue = <expr?>
      v42.SectionParent = v8.CreateSection(v8, v41, v42)
      -- INVALID (MoonSec filler): v42.Flag = ?E?
      v39 = v8.CreateSection(v8, v41, v42)
      v40 = v8.CreateToggle
      v43 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7
        local _pc = 0
        while true do
          if _pc == 0 then
            if not (v0) then _pc = 5 else _pc = 1 end
          elseif _pc == 1 then
            _pc = 5
          elseif _pc == 2 then
            up0 = true
            v1 = true
            _pc = 17
          elseif _pc == 5 then
            up0 = false
            local _r = {v1(v2)}  -- multret: arg range approximated
            v1 = _r[1]
            v2 = _r[2]
            v3 = _r[3]
            _pc = 15
          elseif _pc == 11 then
            v7 = v5
            v6 = v5.Remove
            v6(v7)
            v6 = tracers
            -- INVALID (MoonSec filler): v6[v4] = <expr?>
            _pc = 15
          elseif _pc == 15 then
            local _it = {v1(v2, v3)}
            v4 = _it[1]
            v5 = _it[2]
            if v4 ~= nil then v3 = v4 end
            if v4 ~= nil then _pc = 11 else _pc = 16 end
          elseif _pc == 16 then
            _pc = 11
          elseif _pc == 17 then
            return
          else
            return
          end
        end
      end
      v42.Callback = v43
      v41 = game
      v41 = v41.Players
      v41 = v41.LocalPlayer
      v42 = game
      v43 = v42
      v42 = v42.GetService
      v44 = 'Workspace'
      v42 = v42(v43, v44)
      v42 = v42.CurrentCamera
      v43 = workspace
      v43 = v43.CurrentCamera
      v44 = v43.worldToViewportPoint
      v45 = false
      v46 = Vector3
      v46 = v46.new
      v47 = 0
      v46 = v46(v47, 0.5, 0)
      v47 = Vector3
      v47 = v47.new
      v47 = v47(0, 3, 0)
      v40 = v40(v41, v42)
      local _r = {v46(v47)}  -- multret: arg range approximated
      v48 = _r[3]
      v49 = _r[4]
      v50 = _r[5]
      _pc = 494
    elseif _pc == 452 then
      v53 = Drawing
      v53 = v53.new
      v54 = 'Square'
      v53 = v53(v54)
      -- INVALID (MoonSec filler): v53.Visible = <expr?>
      v54 = Color3
      v54 = v54.new
      v55 = 0
      v56 = 0
      v57 = 0
      v54 = v54(v55, v56, v57)
      v53.Color = v54
      -- INVALID (MoonSec filler): v53.Thickness = <expr?>
      -- INVALID (MoonSec filler): v53.Transparency = <expr?>
      -- INVALID (MoonSec filler): v53.Filled = <expr?>
      v54 = Drawing
      v54 = v54.new
      v55 = 'Square'
      v54 = v54(v55)
      -- INVALID (MoonSec filler): v54.Visible = <expr?>
      -- INVALID (MoonSec filler): v54.Thickness = <expr?>
      -- INVALID (MoonSec filler): v54.Transparency = <expr?>
      -- INVALID (MoonSec filler): v54.Filled = <expr?>
      v55 = function()
        local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
        local v12
        v0 = game.GetService(game, 'RunService').RenderStepped.Connect
        v1 = game.GetService(game, 'RunService').RenderStepped
        v2 = 'RunService'
        v2 = function()
          local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
          local v12
          local _pc = 0
          while true do
            if _pc == 0 then
              v0 = up0
              v0 = v0.Character
              if not (v0 == nil) then _pc = 5 else _pc = 3 end
            elseif _pc == 3 then
              _pc = 5
            elseif _pc == 4 then
              _pc = 183
            elseif _pc == 5 then
              v0 = up0
              v0 = v0.Character
              v1 = v0
              v0 = v0.FindFirstChild
              v2 = 'Humanoid'
              v0 = v0(v1, v2)
              if not (v0.Character.FindFirstChild(v0.Character, 'Humanoid') == nil) then _pc = 13 else _pc = 11 end
            elseif _pc == 11 then
              _pc = 13
            elseif _pc == 12 then
              _pc = 183
            elseif _pc == 13 then
              v0 = up0
              v0 = v0.Character
              v1 = v0
              v0 = v0.FindFirstChild
              v0 = v0(v1, 'HumanoidRootPart')
              v2 = 'HumanoidRootPart'
              if not (v0.Character.FindFirstChild(v0.Character, 'HumanoidRootPart') == nil) then _pc = 21 else _pc = 19 end
            elseif _pc == 19 then
              _pc = 21
            elseif _pc == 20 then
              _pc = 183
            elseif _pc == 21 then
              v0 = up0
              v1 = up1
              _pc = 183
            elseif _pc == 24 then
              _pc = 183
            elseif _pc == 25 then
              v0 = up0
              v0 = v0.Character
              v0 = v0.Humanoid
              v0 = v0.Health
              if not (0 < v0) then _pc = 183 else _pc = 30 end
            elseif _pc == 30 then
              _pc = 183
            elseif _pc == 31 then
              v0 = up2
              v0 = v0.worldToViewportPoint
              local _r = {v0(v1)}  -- multret: arg range approximated
              v0 = _r[1]
              v8 = up0.Character.Head.Position
              v8 = v8 + up5
              v8 = up4
              local _r = {v0(v1, v2, v3, v4, v5, v6, v7, v8)}  -- multret: arg range approximated
              v1 = _r[2]
              v2 = up0.Character.HumanoidRootPart
              v3 = up0.Character.Head
              local _r = {v4(v5, v6, v7, v8)}  -- multret: arg range approximated
              v4 = _r[1]
              v5 = _r[2]
              v6 = up3(up4, v8)
              v7 = up3(v8, up0.Character.HumanoidRootPart.Position - up6)
              v9 = up0.Character.HumanoidRootPart.Position - up6
              v10 = up6
              if not (v1) then _pc = 178 else _pc = 61 end
            elseif _pc == 61 then
              _pc = 178
            elseif _pc == 62 then
              v8 = up7
              v9 = Vector2
              v9 = v9.new
              v10 = v4.Z
              v10 = 1000 / v10
              v11 = v6.Y
              v12 = v7.Y
              v11 = v11 - v12
              v9 = v9(v10, v11)
              v8.Size = v9
              v8 = up7
              v9 = Vector2
              v9 = v9.new
              v10 = v4.X
              v11 = up7
              v11 = v11.Size
              v11 = v11.X
              v11 = v11 / 2
              v10 = v10 - v11
              v11 = v4.Y
              v12 = up7
              v12 = v12.Size
              v12 = v12.Y
              v12 = v12 / 2
              v11 = v11 - v12
              v9 = v9(v10, v11)
              v8.Position = v9
              v8 = up7
              v9 = up8
              v8.Visible = v9
              v8 = up9
              v9 = Vector2
              v9 = v9.new
              v10 = v4.Z
              v10 = 1000 / v10
              v11 = v6.Y
              v12 = v7.Y
              v11 = v11 - v12
              v9 = v9(v10, v11)
              v8.Size = v9
              v8 = up9
              v9 = Vector2
              v9 = v9.new
              v10 = v4.X
              v11 = up9
              v11 = v11.Size
              v11 = v11.X
              v11 = v11 / 2
              v10 = v10 - v11
              v11 = v4.Y
              v12 = up9
              v12 = v12.Size
              v12 = v12.Y
              v12 = v12 / 2
              v11 = v11 - v12
              v9 = v9(v10, v11)
              v8.Position = v9
              v8 = up9
              v9 = up8
              v8.Visible = v9
              v8 = up0
              v8 = v8.Backpack
              v9 = v8
              v8 = v8.findFirstChild
              v10 = 'Knife'
              v8 = v8(v9, v10)
              if not (not v8.Backpack.findFirstChild(v8.Backpack, 'Knife')) then _pc = 136 else _pc = 128 end
            elseif _pc == 128 then
              _pc = 136
            elseif _pc == 129 then
              v8 = up0
              v8 = v8.Character
              v9 = v8
              v8 = v8.findFirstChild
              v10 = 'Knife'
              v8 = v8(v9, v10)
              if not (v8.Character.findFirstChild(v8.Character, 'Knife')) then _pc = 145 else _pc = 135 end
            elseif _pc == 135 then
              _pc = 145
            elseif _pc == 136 then
              up9.Color = Color3.new(1, 0, 0)
              v8 = up9
              v9 = Color3.new(1, 0, 0)
              v10 = 1
              v11 = 0
              v12 = 0
              _pc = 187
            elseif _pc == 145 then
              v8 = up0
              v8 = v8.Backpack
              v9 = v8
              v8 = v8.findFirstChild
              v10 = 'Gun'
              v8 = v8(v9, v10)
              if not (not v8.Backpack.findFirstChild(v8.Backpack, 'Gun')) then _pc = 160 else _pc = 151 end
            elseif _pc == 151 then
              _pc = 160
            elseif _pc == 152 then
              v8 = up0
              v8 = v8.Character
              v9 = v8
              v8 = v8.findFirstChild
              v10 = 'Gun'
              v8 = v8(v9, v10)
              if not (not v8.Character.findFirstChild(v8.Character, 'Gun')) then _pc = 160 else _pc = 158 end
            elseif _pc == 158 then
              _pc = 160
            elseif _pc == 159 then
              _pc = 169
            elseif _pc == 160 then
              up9.Color = Color3.new(0, 0, 1)
              v8 = up9
              v9 = Color3.new(0, 0, 1)
              v10 = 0
              v11 = 0
              v12 = 1
              _pc = 187
            elseif _pc == 169 then
              up9.Color = Color3.new(0, 1, 0)
              v8 = up9
              v9 = Color3.new(0, 1, 0)
              v10 = 0
              v11 = 1
              v12 = 0
              _pc = 187
            elseif _pc == 178 then
              -- INVALID (MoonSec filler): up7.Visible = <expr?>
              -- INVALID (MoonSec filler): up9.Visible = <expr?>
              v8 = up9
              _pc = 187
            elseif _pc == 183 then
              v0 = up7
              -- INVALID (MoonSec filler): v0.Visible = <expr?>
              v0 = up9
              -- INVALID (MoonSec filler): v0.Visible = <expr?>
              _pc = 187
            elseif _pc == 187 then
              return
            else
              return
            end
          end
        end
        v0(v1, v2)
        return
      end
      boxesp = v55
      v55 = coroutine
      v55 = v55.wrap
      v56 = boxesp
      v55 = v55(v56)
      v55()
      _pc = 494
    elseif _pc == 494 then
      local _it = {v48(v49, v50)}
      v51 = _it[1]
      v52 = _it[2]
      if v51 ~= nil then v50 = v51 end
      if v51 ~= nil then _pc = 452 else _pc = 495 end
    elseif _pc == 495 then
      _pc = 452
    elseif _pc == 496 then
      v48 = game.Players.PlayerAdded.Connect
      v49 = game.Players.PlayerAdded
      v50 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12
        v1 = Drawing
        v1 = v1.new
        v2 = 'Square'
        v1 = v1(v2)
        -- INVALID (MoonSec filler): v1.Visible = <expr?>
        v2 = Color3
        v2 = v2.new
        v2 = v2(0, 0, 0)
        v1.Color = v2
        -- INVALID (MoonSec filler): v1.Thickness = <expr?>
        -- INVALID (MoonSec filler): v1.Transparency = <expr?>
        -- INVALID (MoonSec filler): v1.Filled = <expr?>
        v2 = Drawing
        v2 = v2.new
        v2 = v2('Square')
        -- INVALID (MoonSec filler): v2.Visible = <expr?>
        v2.Color = Color3.new(1, 1, 1)
        -- INVALID (MoonSec filler): v2.Thickness = <expr?>
        -- INVALID (MoonSec filler): v2.Transparency = <expr?>
        -- INVALID (MoonSec filler): v2.Filled = <expr?>
        v3 = Color3.new(1, 1, 1)
        v4 = 1
        v5 = 1
        v6 = 1
        v3 = function()
          local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
          local v12
          v0 = game.GetService(game, 'RunService').RenderStepped.Connect
          v1 = game.GetService(game, 'RunService').RenderStepped
          v2 = 'RunService'
          v2 = function()
            local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
            local v12
            local _pc = 0
            while true do
              if _pc == 0 then
                v0 = up0
                v0 = v0.Character
                if not (v0 == nil) then _pc = 5 else _pc = 3 end
              elseif _pc == 3 then
                _pc = 5
              elseif _pc == 4 then
                _pc = 184
              elseif _pc == 5 then
                v0 = up0
                v0 = v0.Character
                v1 = v0
                v0 = v0.FindFirstChild
                v2 = 'Humanoid'
                v0 = v0(v1, v2)
                if not (v0.Character.FindFirstChild(v0.Character, 'Humanoid') == nil) then _pc = 13 else _pc = 11 end
              elseif _pc == 11 then
                _pc = 13
              elseif _pc == 12 then
                _pc = 184
              elseif _pc == 13 then
                v0 = up0
                v0 = v0.Character
                v0 = v0.FindFirstChild
                v0 = v0(v0, 'HumanoidRootPart')
                v1 = v0
                v2 = 'HumanoidRootPart'
                if not (v0.Character.FindFirstChild(v0.Character, 'HumanoidRootPart') ~= nil) then _pc = 184 else _pc = 19 end
              elseif _pc == 19 then
                _pc = 184
              elseif _pc == 20 then
                v0 = up0
                v1 = up1
                _pc = 184
              elseif _pc == 23 then
                _pc = 184
              elseif _pc == 24 then
                v0 = up0
                v0 = v0.Character
                v0 = v0.Humanoid
                v0 = v0.Health
                if not (0 < v0) then _pc = 184 else _pc = 29 end
              elseif _pc == 29 then
                _pc = 184
              elseif _pc == 30 then
                v0 = up2
                v0 = v0.worldToViewportPoint
                local _r = {v0(v1)}  -- multret: arg range approximated
                v0 = _r[1]
                v8 = up0.Character.Head.Position
                v8 = v8 + up5
                v8 = up4
                local _r = {v0(v1, v2, v3, v4, v5, v6, v7, v8)}  -- multret: arg range approximated
                v1 = _r[2]
                v2 = up0.Character.HumanoidRootPart
                v3 = up0.Character.Head
                local _r = {v4(v5, v6, v7, v8)}  -- multret: arg range approximated
                v4 = _r[1]
                v5 = _r[2]
                v6 = up3(up4, v8)
                v7 = up3(v8, up0.Character.HumanoidRootPart.Position - up6)
                v9 = up0.Character.HumanoidRootPart.Position - up6
                v10 = up6
                if not (v1) then _pc = 179 else _pc = 60 end
              elseif _pc == 60 then
                _pc = 179
              elseif _pc == 61 then
                v8 = up7
                v9 = Vector2
                v9 = v9.new
                v10 = v4.Z
                v10 = 1000 / v10
                v11 = v6.Y
                v12 = v7.Y
                v11 = v11 - v12
                v9 = v9(v10, v11)
                v8.Size = v9
                v8 = up7
                v9 = Vector2
                v9 = v9.new
                v10 = v4.X
                v11 = up7
                v11 = v11.Size
                v11 = v11.X
                v11 = v11 / 2
                v10 = v10 - v11
                v11 = v4.Y
                v12 = up7
                v12 = v12.Size
                v12 = v12.Y
                v12 = v12 / 2
                v11 = v11 - v12
                v9 = v9(v10, v11)
                v8.Position = v9
                v8 = up7
                v9 = up8
                v8.Visible = v9
                v8 = up9
                v9 = Vector2
                v9 = v9.new
                v10 = v4.Z
                v10 = 1000 / v10
                v11 = v6.Y
                v12 = v7.Y
                v11 = v11 - v12
                v9 = v9(v10, v11)
                v8.Size = v9
                v8 = up9
                v9 = Vector2
                v9 = v9.new
                v10 = v4.X
                v11 = up9
                v11 = v11.Size
                v11 = v11.X
                v11 = v11 / 2
                v10 = v10 - v11
                v11 = v4.Y
                v12 = up9
                v12 = v12.Size
                v12 = v12.Y
                v12 = v12 / 2
                v11 = v11 - v12
                v9 = v9(v10, v11)
                v8.Position = v9
                v8 = up9
                v9 = up8
                v8.Visible = v9
                v8 = up0
                v8 = v8.Backpack
                v9 = v8
                v8 = v8.findFirstChild
                v10 = 'Knife'
                v8 = v8(v9, v10)
                if not (v8.Backpack.findFirstChild(v8.Backpack, 'Knife')) then _pc = 129 else _pc = 127 end
              elseif _pc == 127 then
                _pc = 129
              elseif _pc == 128 then
                _pc = 137
              elseif _pc == 129 then
                v8 = up0
                v8 = v8.Character
                v9 = v8
                v8 = v8.findFirstChild
                v10 = 'Knife'
                v8 = v8(v9, v10)
                if not (not v8.Character.findFirstChild(v8.Character, 'Knife')) then _pc = 137 else _pc = 135 end
              elseif _pc == 135 then
                _pc = 137
              elseif _pc == 136 then
                _pc = 146
              elseif _pc == 137 then
                up9.Color = Color3.new(1, 0, 0)
                v8 = up9
                v9 = Color3.new(1, 0, 0)
                v10 = 1
                v11 = 0
                v12 = 0
                _pc = 188
              elseif _pc == 146 then
                v8 = up0
                v8 = v8.Backpack
                v9 = v8
                v8 = v8.findFirstChild
                v10 = 'Gun'
                v8 = v8(v9, v10)
                if not (v8.Backpack.findFirstChild(v8.Backpack, 'Gun')) then _pc = 154 else _pc = 152 end
              elseif _pc == 152 then
                _pc = 154
              elseif _pc == 153 then
                _pc = 161
              elseif _pc == 154 then
                v8 = up0
                v8 = v8.Character
                v9 = v8
                v8 = v8.findFirstChild
                v10 = 'Gun'
                v8 = v8(v9, v10)
                if not (v8.Character.findFirstChild(v8.Character, 'Gun')) then _pc = 170 else _pc = 160 end
              elseif _pc == 160 then
                _pc = 170
              elseif _pc == 161 then
                up9.Color = Color3.new(0, 0, 1)
                v8 = up9
                v9 = Color3.new(0, 0, 1)
                v10 = 0
                v11 = 0
                v12 = 1
                _pc = 188
              elseif _pc == 170 then
                up9.Color = Color3.new(0, 1, 0)
                v8 = up9
                v9 = Color3.new(0, 1, 0)
                v10 = 0
                v11 = 1
                v12 = 0
                _pc = 188
              elseif _pc == 179 then
                -- INVALID (MoonSec filler): up7.Visible = <expr?>
                -- INVALID (MoonSec filler): up9.Visible = <expr?>
                v8 = up9
                _pc = 188
              elseif _pc == 184 then
                v0 = up7
                -- INVALID (MoonSec filler): v0.Visible = <expr?>
                v0 = up9
                -- INVALID (MoonSec filler): v0.Visible = <expr?>
                _pc = 188
              elseif _pc == 188 then
                return
              else
                return
              end
            end
          end
          v0(v1, v2)
          return
        end
        boxesp = v3
        coroutine.wrap(boxesp)()
        v3 = coroutine.wrap(boxesp)
        v4 = boxesp
        return
      end
      v48(v49, v50)
      v51 = {}
      -- INVALID (MoonSec filler): v51.Name = ?E?
      -- INVALID (MoonSec filler): v51.Info = ?A?
      -- INVALID (MoonSec filler): v51.CurrentValue = <expr?>
      v51.SectionParent = v8.CreateSection(v8, 'Player Box\'s', false)
      -- INVALID (MoonSec filler): v51.Flag = ?E?
      v48 = v8.CreateSection(v8, 'Player Box\'s', false)
      v49 = v8.CreateToggle
      v50 = v8
      v52 = function(v0)
        local v1
        local _pc = 0
        while true do
          if _pc == 0 then
            if not (not v0) then _pc = 3 else _pc = 1 end
          elseif _pc == 1 then
            _pc = 3
          elseif _pc == 2 then
            _pc = 6
          elseif _pc == 3 then
            up0 = true
            v1 = true
            _pc = 8
          elseif _pc == 6 then
            up0 = false
            v1 = false
            _pc = 8
          elseif _pc == 8 then
            return
          else
            return
          end
        end
      end
      v51.Callback = v52
      v52 = 'Good Executers'
      v53 = true
      v52 = v9
      v53 = 'Sherrif'
      v54 = false
      v49 = v49(v50, v51)
      v50 = v9.CreateSection(v9, v52, v53)
      v51 = v9.CreateSection(v52, v53, v54)
      v52 = function()
        local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
        local v12
        local _pc = 0
        while true do
          if _pc == 0 then
            v0 = _G
            v0 = v0.SilentAimYes
            if not (not v0.SilentAimYes) then _pc = 5 else _pc = 3 end
          elseif _pc == 3 then
            _pc = 5
          elseif _pc == 4 then
            _pc = 92
          elseif _pc == 5 then
            v0 = nil
            v3 = game
            v3 = v3.Players
            v4 = v3
            v3 = v3.GetPlayers
            local _r = {v0(v1, v2, v3, v4)}  -- multret: arg range approximated
            v3 = _r[4]
            v4 = _r[5]
            v1 = math.huge
            local _r = {v0(v1, v2, v3, v4)}  -- multret: arg range approximated
            v2 = _r[3]
            _pc = 89
          elseif _pc == 15 then
            v7 = v6.Character
            if not (v7) then _pc = 89 else _pc = 17 end
          elseif _pc == 17 then
            _pc = 89
          elseif _pc == 18 then
            v7 = v6.Character
            v8 = v7
            v7 = v7.FindFirstChild
            v9 = 'Humanoid'
            v7 = v7(v8, v9)
            if not (not v7) then _pc = 25 else _pc = 23 end
          elseif _pc == 23 then
            _pc = 25
          elseif _pc == 24 then
            _pc = 89
          elseif _pc == 25 then
            v7 = v6.Character
            v7 = v7.Humanoid
            v7 = v7.Health
            if not (v7 == 0) then _pc = 31 else _pc = 29 end
          elseif _pc == 29 then
            _pc = 31
          elseif _pc == 30 then
            _pc = 89
          elseif _pc == 31 then
            v7 = v6.Character
            v8 = v7
            v7 = v7.FindFirstChild
            v9 = 'HumanoidRootPart'
            v7 = v7(v8, v9)
            if not (not v7) then _pc = 38 else _pc = 36 end
          elseif _pc == 36 then
            _pc = 38
          elseif _pc == 37 then
            _pc = 89
          elseif _pc == 38 then
            v7 = v6.Backpack
            v8 = v7
            v7 = v7.FindFirstChild
            v9 = 'Knife'
            v7 = v7(v8, v9)
            if not (not v7) then _pc = 51 else _pc = 43 end
          elseif _pc == 43 then
            _pc = 51
          elseif _pc == 44 then
            v7 = v6.Character
            v8 = v7
            v7 = v7.FindFirstChild
            v9 = 'Knife'
            v7 = v7(v8, v9)
            if not (not v7) then _pc = 51 else _pc = 49 end
          elseif _pc == 49 then
            _pc = 51
          elseif _pc == 50 then
            _pc = 89
          elseif _pc == 51 then
            v7 = game
            v7 = v7.Workspace
            v7 = v7.CurrentCamera
            v7 = v7.WorldToScreenPoint
            v7 = v7(v7, v6.Character.HumanoidRootPart.Position)
            v8 = (Vector2.new(game.GetService(game, 'Players').LocalPlayer:GetMouse().X, game.GetService(game, 'Players').LocalPlayer:GetMouse().Y) - Vector2.new(v7.X, v7.Y)).magnitude
            v9 = Vector2.new(v7.X, v7.Y)
            v10 = v7.X
            v11 = v7.Y
            v12 = 'Players'
            if not (v8 < v1) then _pc = 89 else _pc = 86 end
          elseif _pc == 86 then
            _pc = 89
          elseif _pc == 87 then
            v0 = v6
            v1 = v8
            _pc = 89
          elseif _pc == 89 then
            local _it = {v2(v3, v4)}
            v5 = _it[1]
            v6 = _it[2]
            if v5 ~= nil then v4 = v5 end
            if v5 ~= nil then _pc = 15 else _pc = 90 end
          elseif _pc == 90 then
            _pc = 15
          elseif _pc == 91 then
            return v0
          elseif _pc == 92 then
            return
          else
            return
          end
        end
      end
      v53 = game
      v54 = v53
      v53 = v53.GetService
      v53 = v53(v54, 'RunService')
      v53 = v53.RenderStepped
      v54 = v53
      v53 = v53.Connect
      v53(v54, v52)
      v54 = v9
      v53 = v9.CreateToggle
      v55 = {}
      -- INVALID (MoonSec filler): v55.Name = ?S?
      -- INVALID (MoonSec filler): v55.Info = ?W?
      -- INVALID (MoonSec filler): v55.CurrentValue = <expr?>
      v55.SectionParent = v51
      -- INVALID (MoonSec filler): v55.Flag = ?S?
      v56 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7
        local _pc = 0
        while true do
          if _pc == 0 then
            v1 = _G
            v1.SilentAimYes = v0
            if not (not v0) then _pc = 5 else _pc = 3 end
          elseif _pc == 3 then
            _pc = 5
          elseif _pc == 4 then
            _pc = 15
          elseif _pc == 5 then
            v1 = nil
            v2 = hookmetamethod
            v3 = game
            v4 = '__namecall'
            v5 = function(v0)
              local v2, v3, v4, v5, v6, v7
              local _pc = 0
              while true do
                if _pc == 0 then
                  v2 = {}
                  v3 = getnamecallmethod()
                  v4 = tostring(v0)
                  v5 = v0
                  if not (tostring(v0) == 'ShootGun') then _pc = 32 else _pc = 9 end
                elseif _pc == 9 then
                  _pc = 32
                elseif _pc == 10 then
                  v4 = getnamecallmethod()
                  if not (v4 == 'InvokeServer') then _pc = 32 else _pc = 13 end
                elseif _pc == 13 then
                  _pc = 32
                elseif _pc == 14 then
                  v4 = _G
                  v4 = v4.SilentAimYes
                  if not (not v4.SilentAimYes) then _pc = 19 else _pc = 17 end
                elseif _pc == 17 then
                  _pc = 19
                elseif _pc == 18 then
                  _pc = 32
                elseif _pc == 19 then
                  v2[2] = up0().Character.Head.Position
                  v4 = v0.InvokeServer
                  v5 = v0
                  v6 = unpack
                  v7 = v2
                  return v4(v5, unpack, v2)
                elseif _pc == 31 then
                  v4[0] = v0
                  v6 = {}
                  -- INVALID (MoonSec filler): v4()[0] = <expr?>
                  -- INVALID (MoonSec filler): v4()[0] = <expr?>
                  -- INVALID (MoonSec filler): v0[1] = <expr?>
                  v4 = v4()
                  v5 = v0[0]
                  _pc = -1
                else
                  return
                end
              end
            end
            v1 = v2(v3, v4, v5)
            v2 = v2(v3, v4, v5)
            _pc = 15
          elseif _pc == 15 then
            return
          else
            return
          end
        end
      end
      v55.Callback = v56
      v53 = v53(v54, v55)
      v54 = function()
        local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
        local v12
        local _pc = 0
        while true do
          if _pc == 0 then
            v0 = _G
            v0 = v0.KnifeSilentThrow
            if not (v0.KnifeSilentThrow) then _pc = 80 else _pc = 3 end
          elseif _pc == 3 then
            _pc = 80
          elseif _pc == 4 then
            v0 = nil
            v3 = game
            v3 = v3.Players
            v4 = v3
            v3 = v3.GetPlayers
            local _r = {v0(v1, v2, v3, v4)}  -- multret: arg range approximated
            v3 = _r[4]
            v4 = _r[5]
            v1 = math.huge
            local _r = {v0(v1, v2, v3, v4)}  -- multret: arg range approximated
            v2 = _r[3]
            _pc = 77
          elseif _pc == 14 then
            v7 = v6.Backpack
            if not (v7) then _pc = 77 else _pc = 16 end
          elseif _pc == 16 then
            _pc = 77
          elseif _pc == 17 then
            v7 = v6.Character
            if not (v7) then _pc = 77 else _pc = 19 end
          elseif _pc == 19 then
            _pc = 77
          elseif _pc == 20 then
            v7 = v6.Character
            v7 = v7.FindFirstChild
            v7 = v7(v7, 'Humanoid')
            v8 = v7
            v9 = 'Humanoid'
            if not (not v7) then _pc = 27 else _pc = 25 end
          elseif _pc == 25 then
            _pc = 27
          elseif _pc == 26 then
            _pc = 77
          elseif _pc == 27 then
            v7 = v6.Character
            v7 = v7.Humanoid
            v7 = v7.Health
            if not (v7 ~= 0) then _pc = 77 else _pc = 31 end
          elseif _pc == 31 then
            _pc = 77
          elseif _pc == 32 then
            v7 = v6.Character
            v7 = v7.FindFirstChild
            v7 = v7(v7, 'HumanoidRootPart')
            v8 = v7
            v9 = 'HumanoidRootPart'
            if not (v7) then _pc = 77 else _pc = 37 end
          elseif _pc == 37 then
            _pc = 77
          elseif _pc == 38 then
            v7 = game
            v7 = v7.Workspace
            v7 = v7.CurrentCamera
            v8 = v7
            v7 = v7.WorldToScreenPoint
            v7 = v7(v8, v6.Character.HumanoidRootPart.Position)
            v8 = Vector2
            v8 = v8.new
            v8 = v8(game.GetService(game, 'Players').LocalPlayer:GetMouse().X, game.GetService(game, 'Players').LocalPlayer:GetMouse().Y)
            v8 = v8 - Vector2.new(v7.X, v7.Y)
            v8 = v8.magnitude
            v9 = Vector2.new(v7.X, v7.Y)
            v10 = v7.X
            v11 = v7.Y
            v12 = 'Players'
            if v8 < v1 then _pc = 75 else _pc = 73 end
          elseif _pc == 73 then
            _pc = 75
          elseif _pc == 74 then
            _pc = 77
          elseif _pc == 75 then
            v0 = v6
            v1 = v8
            _pc = 77
          elseif _pc == 77 then
            local _it = {v2(v3, v4)}
            v5 = _it[1]
            v6 = _it[2]
            if v5 ~= nil then v4 = v5 end
            if v5 ~= nil then _pc = 14 else _pc = 78 end
          elseif _pc == 78 then
            _pc = 14
          elseif _pc == 79 then
            return v0
          elseif _pc == 80 then
            return
          else
            return
          end
        end
      end
      v57 = 'Murderer'
      v57 = v9
      v58 = {}
      -- INVALID (MoonSec filler): v58.Name = ?S?
      -- INVALID (MoonSec filler): v58.Info = ?W?
      -- INVALID (MoonSec filler): v58.CurrentValue = <expr?>
      v58.SectionParent = v9.CreateSection(v9, v57, false)
      -- INVALID (MoonSec filler): v58.Flag = ?S?
      v55 = v9.CreateSection(v9, v57, false)
      v56 = v9.CreateToggle
      v59 = function(v0)
        local v1, v2, v3, v4, v5, v6, v7
        v1 = _G
        v1.KnifeSilentThrow = v0
        if not (not (v0)) then
          v1 = nil
          v2 = hookmetamethod
          v3 = game
          v4 = '__namecall'
          v5 = function(v0)
            local v2, v3, v4, v5, v6, v7
            local _pc = 0
            while true do
              if _pc == 0 then
                v2 = {}
                v4 = tostring
                v4 = v4(v0)
                v3 = getnamecallmethod()
                v5 = v0
                if not (tostring(v0) ~= 'Throw') then _pc = 11 else _pc = 9 end
              elseif _pc == 9 then
                _pc = 11
              elseif _pc == 10 then
                _pc = 35
              elseif _pc == 11 then
                v4 = getnamecallmethod()
                if not (v4 == 'FireServer') then _pc = 35 else _pc = 14 end
              elseif _pc == 14 then
                _pc = 35
              elseif _pc == 15 then
                v4 = _G.KnifeSilentThrow
                if not (v4 == true) then _pc = 35 else _pc = 18 end
              elseif _pc == 18 then
                _pc = 35
              elseif _pc == 19 then
                v2[1] = CFrame.new(up0().Character.Head.Position)
                v4 = v0.FireServer
                v5 = v0
                v6 = unpack
                v7 = v2
                return v0.FireServer(v0, unpack, v2)
              elseif _pc == 34 then
                v0[1] = v0
                -- INVALID (MoonSec filler): v4 = 0()
                v5 = 0
                v6 = 0
                _pc = -1
              else
                return
              end
            end
          end
          v1 = v2(v3, v4, v5)
          v2 = v2(v3, v4, v5)
        end
        return
      end
      v58.Callback = v59
      v57 = game
      v57 = v57.GetService
      v57 = v57(v57, 'RunService')
      v57 = v57.RenderStepped
      v57 = v57.Connect
      v57(v57, v54)
      v57 = workspace
      v57 = v57.CurrentCamera
      v60 = 'RunService'
      v60 = game
      v61 = 'UserInputService'
      v60 = game
      v61 = v60
      v60 = v60.GetService
      v62 = 'Players'
      v60 = v60(v61, v62)
      v61 = v60.LocalPlayer
      v63 = v61
      v62 = v61.GetMouse
      v62 = v62(v63)
      v63 = {}
      -- INVALID (MoonSec filler): v63.Aiming = <expr?>
      -- INVALID (MoonSec filler): v63.Aimbot_AimPart = ?H?
      -- INVALID (MoonSec filler): v63.Aimbot_Draw_FOV = <expr?>
      -- INVALID (MoonSec filler): v63.Aimbot_FOV_Radius = <expr?>
      v64 = Color3
      v64 = v64.fromRGB
      v64 = v64(255, 255, 255)
      v63.Aimbot_FOV_Color = v64
      v64 = Drawing
      v64 = v64.new
      v64 = v64('Circle')
      v64.Visible = v63.Aimbot_Draw_FOV
      v64.Radius = v63.Aimbot_FOV_Radius
      v64.Color = v63.Aimbot_FOV_Color
      -- INVALID (MoonSec filler): v64.Thickness = <expr?>
      -- INVALID (MoonSec filler): v64.Filled = <expr?>
      -- INVALID (MoonSec filler): v64.Transparency = <expr?>
      v67 = {}
      -- INVALID (MoonSec filler): v67.Name = ?D?
      -- INVALID (MoonSec filler): v67.Info = ?T?
      v67.CurrentValue = v63.Aimbot_Draw_FOV
      v67.SectionParent = v55
      -- INVALID (MoonSec filler): v67.Flag = ?F?
      v56 = v56(v57, v58)
      v58 = game.GetService(game, v60)
      v59 = game.GetService(v60, v61)
      v65 = v9.CreateToggle
      v66 = v9
      v68 = v63.Aimbot_Draw_FOV
      v68 = function(v0)
        local v1, v2, v3, v4
        up0.Position = game.GetService(game, 'UserInputService'):GetMouseLocation()
        up1.Aimbot_Draw_FOV = v0
        up0.Visible = v0
        v1 = up0
        v2 = game.GetService(game, 'UserInputService'):GetMouseLocation()
        v3 = game.GetService(game, 'UserInputService')
        v4 = 'UserInputService'
        return
      end
      v67.Callback = v68
      v68 = {}
      -- INVALID (MoonSec filler): v68.Name = ?W?
      -- INVALID (MoonSec filler): v68.Info = ?T?
      -- INVALID (MoonSec filler): v68.CurrentValue = <expr?>
      v68.SectionParent = v55
      -- INVALID (MoonSec filler): v68.Flag = ?W?
      v65 = v65(v66, v67)
      v66 = v9.CreateToggle
      v67 = v9
      v69 = function(v0)
        local v1
        _G.WallCheck = v0
        v1 = _G
        return
      end
      v68.Callback = v69
      v69 = {}
      -- INVALID (MoonSec filler): v69.Name = ?E?
      -- INVALID (MoonSec filler): v69.Info = ?T?
      v70 = v63.Aiming
      v69.CurrentValue = v70
      v69.SectionParent = v55
      -- INVALID (MoonSec filler): v69.Flag = ?T?
      v66 = v66(v67, v68)
      v67 = v9.CreateToggle
      v68 = v9
      v70 = function(v0)
        local v1
        up0.Aiming = v0
        v1 = up0
        return
      end
      v69.Callback = v70
      v70 = {}
      -- INVALID (MoonSec filler): v70.Name = ?F?
      -- INVALID (MoonSec filler): v70.Info = ?C?
      v71 = {}
      v72 = 0
      v73 = 200
      v70.Range = v71
      -- INVALID (MoonSec filler): v70.Increment = <expr?>
      -- INVALID (MoonSec filler): v70.Suffix = ?p?
      v70.SectionParent = v55
      v71 = v63.Aimbot_FOV_Radius
      v70.CurrentValue = v71
      -- INVALID (MoonSec filler): v70.Flag = ?F?
      v67 = v67(v68, v69)
      v68 = v9.CreateSlider
      v69 = v9
      v71 = function(v0)
        local v1
        up0.Aimbot_FOV_Radius = v0
        up1.Radius = v0
        v1 = up1
        return
      end
      v70.Callback = v71
      v70 = v9
      v71 = {}
      -- INVALID (MoonSec filler): v71.Name = ?C?
      -- INVALID (MoonSec filler): v71.Info = ?C?
      v71.SectionParent = v55
      v72 = Color3
      v72 = v72.fromRGB
      v73 = 255
      v74 = 255
      v75 = 255
      v72 = v72(v73, v74, v75)
      v71.Color = v72
      -- INVALID (MoonSec filler): v71.Flag = ?C?
      v68 = v68(v69, v70)
      v69 = v9.CreateColorPicker
      v72 = function(v0)
        local v1
        up0.Color = v0
        v1 = up0
        return
      end
      v71.Callback = v72
      v70 = v58.RenderStepped
      v71 = v70
      v70 = v70.Connect
      v69 = v69(v70, v71)
      v72 = function()
        local v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11
        local v12, v13, v14, v15
        local _pc = 0
        while true do
          if _pc == 0 then
            v0 = math
            v0 = v0.huge
            v2 = up0
            v2 = v2.Aimbot_Draw_FOV
            v1 = nil
            if not (up0.Aimbot_Draw_FOV ~= true) then _pc = 8 else _pc = 6 end
          elseif _pc == 6 then
            _pc = 8
          elseif _pc == 7 then
            _pc = 16
          elseif _pc == 8 then
            v2 = up1
            v2.Position = game.GetService(game, 'UserInputService'):GetMouseLocation()
            v3 = game.GetService(game, 'UserInputService'):GetMouseLocation()
            v4 = game.GetService(game, 'UserInputService')
            v5 = 'UserInputService'
            _pc = 16
          elseif _pc == 16 then
            v2 = up0.Aiming
            if not (v2.Aiming) then _pc = 168 else _pc = 19 end
          elseif _pc == 19 then
            _pc = 168
          elseif _pc == 20 then
            v2 = up0
            v2 = v2.Aimbot_Draw_FOV
            if not (v2 ~= true) then _pc = 25 else _pc = 23 end
          elseif _pc == 23 then
            _pc = 25
          elseif _pc == 24 then
            _pc = 168
          elseif _pc == 25 then
            v3 = up2
            v4 = v3
            v3 = v3.GetChildren
            local _r = {v1(v2, v3, v4)}  -- multret: arg range approximated
            v3 = _r[3]
            v4 = _r[4]
            v2 = next
            _pc = 124
          elseif _pc == 30 then
            v7 = up3
            _pc = 124
          elseif _pc == 32 then
            _pc = 124
          elseif _pc == 33 then
            v7 = v6.Character
            if not (not v7) then _pc = 37 else _pc = 35 end
          elseif _pc == 35 then
            _pc = 37
          elseif _pc == 36 then
            _pc = 124
          elseif _pc == 37 then
            v7 = v6.Character
            v7 = v7.FindFirstChild
            v7 = v7(v7, 'HumanoidRootPart')
            v8 = v7
            v9 = 'HumanoidRootPart'
            if not (v7) then _pc = 124 else _pc = 42 end
          elseif _pc == 42 then
            _pc = 124
          elseif _pc == 43 then
            v7 = v6.Character
            v7 = v7.FindFirstChild
            v7 = v7(v7, 'Humanoid')
            v8 = v7
            v9 = 'Humanoid'
            if not (v7) then _pc = 124 else _pc = 48 end
          elseif _pc == 48 then
            _pc = 124
          elseif _pc == 49 then
            v7 = v6.Character
            v8 = v7
            v7 = v7.FindFirstChild
            v9 = 'Humanoid'
            v7 = v7(v8, v9)
            v7 = v7.Health
            if 0 < v7.FindFirstChild(v7, 'Humanoid').Health then _pc = 57 else _pc = 55 end
          elseif _pc == 55 then
            _pc = 57
          elseif _pc == 56 then
            _pc = 124
          elseif _pc == 57 then
            v7 = v6.Character
            v8 = up4
            v8 = v8.WorldToViewportPoint
            v10 = up0
            v10 = v10.Aimbot_AimPart
            v10 = v7[v10]
            v10 = v10.Position
            local _r = {v8(v9, v10)}  -- multret: arg range approximated
            v8 = _r[1]
            v9 = _r[2]
            if not (not _r[2]) then _pc = 68 else _pc = 66 end
          elseif _pc == 66 then
            _pc = 68
          elseif _pc == 67 then
            _pc = 124
          elseif _pc == 68 then
            v10 = Vector2
            v10 = v10.new
            v11 = up5
            v11 = v11.X
            v10 = v10(v11, up5.Y)
            v11 = Vector2
            v11 = v11.new
            v11 = v11(v8.X, v8.Y)
            v10 = v10 - v11
            v10 = v10.Magnitude
            v12 = v8.X
            v13 = v8.Y
            if v10 < v0 then _pc = 85 else _pc = 83 end
          elseif _pc == 83 then
            _pc = 85
          elseif _pc == 84 then
            _pc = 124
          elseif _pc == 85 then
            v11 = up0.Aimbot_FOV_Radius
            if not (v10 < v11) then _pc = 124 else _pc = 88 end
          elseif _pc == 88 then
            _pc = 124
          elseif _pc == 89 then
            v11 = _G.WallCheck
            if not (v11.WallCheck) then _pc = 122 else _pc = 92 end
          elseif _pc == 92 then
            _pc = 122
          elseif _pc == 93 then
            v11 = workspace.Raycast(workspace, game.Players.LocalPlayer.Character.Head.Position, v7.Head.Position - game.Players.LocalPlayer.Character.Head.Position)
            v12 = workspace
            v13 = game.Players.LocalPlayer.Character.Head.Position
            v14 = v7.Head.Position - game.Players.LocalPlayer.Character.Head.Position
            v15 = game.Players.LocalPlayer.Character.Head.Position
            if not (v11) then _pc = 119 else _pc = 112 end
          elseif _pc == 112 then
            _pc = 119
          elseif _pc == 113 then
            v12 = v11.Instance.IsDescendantOf(v11.Instance, v7)
            v13 = v11.Instance
            v14 = v7
            if not (v12) then _pc = 124 else _pc = 118 end
          elseif _pc == 118 then
            _pc = 124
          elseif _pc == 119 then
            v0 = v10
            v1 = v7
            _pc = 124
          elseif _pc == 122 then
            v0 = v10
            v1 = v7
            _pc = 124
          elseif _pc == 124 then
            local _it = {v2(v3, v4)}
            v5 = _it[1]
            v6 = _it[2]
            if v5 ~= nil then v4 = v5 end
            if v5 ~= nil then _pc = 30 else _pc = 125 end
          elseif _pc == 125 then
            _pc = 30
          elseif _pc == 126 then
            if not (v1 ~= nil) then _pc = 168 else _pc = 127 end
          elseif _pc == 127 then
            _pc = 168
          elseif _pc == 128 then
            v2 = v1.FindFirstChild(v1, 'HumanoidRootPart')
            v3 = v1
            v4 = 'HumanoidRootPart'
            if not (v2) then _pc = 168 else _pc = 132 end
          elseif _pc == 132 then
            _pc = 168
          elseif _pc == 133 then
            v2 = v1.FindFirstChild(v1, 'Humanoid')
            v3 = v1
            v4 = 'Humanoid'
            if not (v2) then _pc = 168 else _pc = 137 end
          elseif _pc == 137 then
            _pc = 168
          elseif _pc == 138 then
            v2 = v1.FindFirstChild(v1, 'Humanoid').Health
            v3 = v1
            v4 = 'Humanoid'
            if not (0 < v2) then _pc = 168 else _pc = 143 end
          elseif _pc == 143 then
            _pc = 168
          elseif _pc == 144 then
            game.Players.LocalPlayer.Character.Knife.Throw.FireServer(game.Players.LocalPlayer.Character.Knife.Throw, CFrame.new(v1.Head.Position), v1.Head.Position - Vector3.new(0, 1, 0))
            v2 = CFrame.new(v1.Head.Position)
            v3 = v1.Head.Position - Vector3.new(0, 1, 0)
            v4 = game.Players.LocalPlayer.Character.Knife.Throw.FireServer
            v5 = game.Players.LocalPlayer.Character.Knife.Throw
            v6 = CFrame.new(v1.Head.Position)
            v7 = v1.Head.Position - Vector3.new(0, 1, 0)
            _pc = 168
          elseif _pc == 168 then
            return
          else
            return
          end
        end
      end
      v70(v71, v72)
      v70 = syn
      if not (not syn) then _pc = 704 else _pc = 702 end
    elseif _pc == 702 then
      _pc = 704
    elseif _pc == 703 then
      _pc = 708
    elseif _pc == 704 then
      v70 = syn
      v70 = v70.request
      if not (not v70.request) then _pc = 735 else _pc = 707 end
    elseif _pc == 707 then
      _pc = 735
    elseif _pc == 708 then
      v70 = http
      if not (not v70) then _pc = 712 else _pc = 710 end
    elseif _pc == 710 then
      _pc = 712
    elseif _pc == 711 then
      _pc = 717
    elseif _pc == 712 then
      v70 = http
      v70 = v70.request
      if not (v70.request) then _pc = 717 else _pc = 715 end
    elseif _pc == 715 then
      _pc = 717
    elseif _pc == 716 then
      _pc = 735
    elseif _pc == 717 then
      v70 = http_request
      if not (not v70) then _pc = 735 else _pc = 719 end
    elseif _pc == 719 then
      _pc = 735
    elseif _pc == 720 then
      v70 = fluxus
      if not (not v70) then _pc = 724 else _pc = 722 end
    elseif _pc == 722 then
      _pc = 724
    elseif _pc == 723 then
      _pc = 728
    elseif _pc == 724 then
      v70 = fluxus
      v70 = v70.request
      if not (not v70.request) then _pc = 735 else _pc = 727 end
    elseif _pc == 727 then
      _pc = 735
    elseif _pc == 728 then
      v70 = getgenv
      v70 = v70()
      v70 = v70.request
      if not (v70.request) then _pc = 734 else _pc = 732 end
    elseif _pc == 732 then
      _pc = 734
    elseif _pc == 733 then
      _pc = 735
    elseif _pc == 734 then
      v70 = request
      _pc = 735
    elseif _pc == 735 then
      if not (not v70) then _pc = 742 else _pc = 736 end
    elseif _pc == 736 then
      _pc = 742
    elseif _pc == 737 then
      warn('[HttpRequest - Error]', ' Cannot Request Http.')
      v71 = warn
      v72 = '[HttpRequest - Error]'
      v73 = ' Cannot Request Http.'
      return
    elseif _pc == 742 then
      -- [PATCHED] Discord webhook exfiltration removed.
      -- It collected Username / Game Name / Job ID / HWID (RbxAnalyticsService:GetClientId)
      -- and POSTed them as a JSON embed to a discord.com/api/webhooks URL.
      return
    else
      return
    end
  end
end

_main()

