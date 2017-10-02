tell application "System Preferences"
	activate
	reveal (pane id "com.mice.driver.360Controller.Prefs")
	delay 0.3
end tell

tell application "System Events" to tell application process "System Preferences"
	click radio button "Advanced" of radio group 1 of window "XBox 360 Controllers"

	set theCheckbox to checkbox "Pretend to be an Xbox 360 Controller" of group "Spoofing Preferences" of group 1 of window "XBox 360 Controllers"
	click theCheckbox
	tell theCheckbox
		set checkboxStatus to value of theCheckbox as boolean
		if checkboxStatus is false then click theCheckbox
	end tell
end tell

tell application "System Events"
	set visible of application process "System Preferences" to false
end tell
