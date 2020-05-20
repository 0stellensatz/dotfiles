hs.hotkey.bind({'control','command'},'H',hs.reload)
hs.hotkey.bind({'control','command'},'A',function() hs.application.launchOrFocus('Activity Monitor') end)
hs.hotkey.bind('','f10',function() hs.application.launchOrFocus('iTerm') end)
hs.hotkey.bind('shift','f10',function() hs.alert.show(hs.keycodes.currentSourceID() ) end)

do
	-- key modification from option(right) to f13 by karabiner-elements is required.

	local IME = {
		system_colemak = "com.apple.keylayout.Colemak",
		kotoeri_romaji = "com.apple.inputmethod.Kotoeri.Roman",
		kotoeri_hiragana = "com.apple.inputmethod.Kotoeri.Japanese",
		gureum_colemak = "org.youknowone.inputmethod.Gureum.colemak",
		gureum_han390 = "org.youknowone.inputmethod.Gureum.han390",

		ukelele_prefix = "org.sil.ukelele.keyboardlayout.interlingualcolemak",

		russian = ".colemak-russian",
		french = ".colemak-french",
	} 

	local toggleAlphabet = function()
		local currentIME = hs.keycodes.currentSourceID()
		local nextIME = ""
		local nextIME_cor = ""
		if currentIME == IME.gureum_colemak then
			nextIME = IME.gureum_han390
		elseif currentIME == IME.gureum_han390 then
			nextIME = IME.gureum_colemak
		elseif currentIME == IME.kotoeri_romaji then
			nextIME = IME.kotoeri_hiragana
		elseif currentIME == IME.kotoeri_hiragana then
			nextIME = IME.kotoeri_romaji
		elseif currentIME == IME.system_colemak then
			nextIME = IME.ukelele_prefix..IME.russian
			nextIME_cor = IME.ukelele_prefix..".keylayout"..IME.russian
		elseif string.sub(currentIME, -string.len(IME.russian)) == IME.russian then
			nextIME = IME.system_colemak
		else
			nextIME = currentIME()
		end

		if not hs.keycodes.currentSourceID(nextIME) then
			hs.keycodes.currentSourceID(nextIME_cor)
		end
	end

	local escVim = function()
		local currentIME = hs.keycodes.currentSourceID()
		if currentIME == IME.gureum_han390 then
			hs.keycodes.currentSourceID(IME.gureum_colemak)
		elseif currentIME == IME.kotoeri_hiragana then
			hs.keycodes.currentSourceID(IME.kotoeri_romaji)
		elseif string.sub(currentIME, -string.len(IME.russian)) == IME.russian then
			hs.keycodes.currentSourceID(IME.system_colemak)
		end
		hs.eventtap.keyStroke({}, 'escape')
	end

	hs.hotkey.bind('','f2', function() hs.keycodes.currentSourceID(IME.gureum_han390) end)
	hs.hotkey.bind('','f3', function() hs.keycodes.currentSourceID(IME.kotoeri_hiragana) end)
	hs.hotkey.bind('','f4', function() 
		if not hs.keycodes.currentSourceID(IME.ukelele_prefix..IME.french) then
			hs.keycodes.currentSourceID(IME.ukelele_prefix..".keylayout"..IME.french)
		end
	end)
	hs.hotkey.bind('','f5', function() 
		if not hs.keycodes.currentSourceID(IME.ukelele_prefix..IME.russian) then
			hs.keycodes.currentSourceID(IME.ukelele_prefix..".keylayout"..IME.russian)
		end
	end)

	hs.hotkey.bind('control','[',escVim)
	hs.hotkey.bind('','f16',escVim)

	hs.hotkey.bind('','f13',toggleAlphabet)
end

do
	local expand_window = function()
		local window = hs.window.focusedWindow()
		local frame = window:frame()
		local screen = window:screen():frame()
		frame.x = screen.x
		frame.y = screen.y
		frame.w = screen.w
		frame.h = screen.h
		window:setFrame(frame)
	end

	local expand_window_half_left = function()
		local window = hs.window.focusedWindow()
		local frame = window:frame()
		local screen = window:screen():frame()
		frame.x = screen.x
		frame.y = screen.y
		frame.w = screen.w / 2
		frame.h = screen.h
		window:setFrame(frame)
	end

	local expand_window_half_right = function()
		local window = hs.window.focusedWindow()
		local frame = window:frame()
		local screen = window:screen():frame()
		frame.x = screen.x + (screen.w / 2)
		frame.y = screen.y
		frame.w = screen.w / 2
		frame.h = screen.h
		window:setFrame(frame)
	end

	hs.hotkey.bind({'command','shift'}, '0', expand_window)
	hs.hotkey.bind({'command','shift'}, '1', expand_window_half_left)
	hs.hotkey.bind({'command','shift'}, '2', expand_window_half_right)
end

hs.alert.defaultStyle["radius"] = 2
hs.alert.defaultStyle["strokeWidth"] = 0

hs.application.launchOrFocus('Hammerspoon')

