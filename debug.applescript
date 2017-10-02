tell application "System Events"
	tell front window of (first application process whose frontmost is true)
		set uiElems to entire contents
	end tell
end tell
