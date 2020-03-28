hs.hotkey.bind({'control','command'},'H',hs.reload)
hs.hotkey.bind({'control','command'},'A',function() hs.application.launchOrFocus('Activity Monitor') end)
hs.hotkey.bind('','f10',function() hs.application.launchOrFocus('iTerm') end)

do
	-- key modification from option(right) to f13 by karabiner-elements is required.

	local IME = {
		kotoeri_romaji = "com.apple.inputmethod.Kotoeri.Roman",
		kotoeri_hiragana = "com.apple.inputmethod.Kotoeri.Japanese",
		gureum_colemak = "org.youknowone.inputmethod.Gureum.colemak",
		gureum_han390 = "org.youknowone.inputmethod.Gureum.han390",
	}

	local changeIME = function()
	    local currentIME = hs.keycodes.currentSourceID()
		local nextIME = nil
		if currentIME == IME.gureum_colemak or currentIME == IME.gureum_han390 then
			nextIME = IME.kotoeri_hiragana
		else
			nextIME = IME.gureum_han390
		end
		hs.keycodes.currentSourceID(nextIME)
	end

	local toggleAlphabet = function()
		local currentIME = hs.keycodes.currentSourceID()
		local nextIME = nil
		if currentIME == IME.gureum_colemak then
			nextIME = IME.gureum_han390
		elseif currentIME == IME.gureum_han390 then
			nextIME = IME.gureum_colemak
		elseif currentIME == IME.kotoeri_romaji then
			nextIME = IME.kotoeri_hiragana
		else
			nextIME = IME.kotoeri_romaji
		end
		hs.keycodes.currentSourceID(nextIME)
	end

	local escVim = function()
		local currentIME = hs.keycodes.currentSourceID()
		if currentIME == IME.gureum_han390 then
			hs.keycodes.currentSourceID(IME.gureum_colemak)
		elseif currentIME == IME.kotoeri_hiragana then
			hs.keycodes.currentSourceID(IME.kotoeri_romaji)
		end
		hs.eventtap.keyStroke({}, 'escape')
	end

	hs.hotkey.bind('control','[',escVim)
	hs.hotkey.bind('','f13',toggleAlphabet)
	hs.hotkey.bind('control','f13',changeIME)
end

local input_source = hs.keycodes.currentSourceID()
print(input_source)

hs.alert.show('Hammerspoon Reloaded')
