repeat
	set theResponse to display dialog "QuickTime Player Audio Scrubber" with icon file ((path to applications folder as text) & "QuickTime Player.app:Contents:Resources:QuickTimePlayerX.icns") buttons {"<<15", "15>>", "Exit"} default button "<<15"
	set buttonPressed to button returned of theResponse
	
	if buttonPressed = "<<15" then
		tell application "System Events"
			set frontmost of process "QuickTime Player" to true
			repeat 4 * 15 times
				key code 123
			end repeat
		end tell
	else if buttonPressed = "15>>" then
		tell application "System Events"
			set frontmost of process "QuickTime Player" to true
			repeat 4 * 15 times
				key code 124
			end repeat
		end tell
	else
		error number -128
	end if
	
	tell application "System Events"
		keystroke space
	end tell
	
	tell application "System Events"
		set frontmost of process "QuickTime Audio Scrubber" to true
	end tell
end repeat