#!/bin/bash

# Created by TheMacGamer92, this is an opensource system that does not require a license to use

# User notification
title="Software Update Available"
message="A required security update is available. Please click the 'Update Now' button and follow the onscreen prompt to start the update process."

# Path to Jamf Helper
jamfHelper="/Library/Application Support/JAMF/bin/jamfHelper.app/Contents/MacOS/jamfHelper"

# Icon
iconPath="/System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/ToolbarCustomizeIcon.icns"

# Button
buttonClicked=$("$jamfHelper" -windowType utility -title "$title" -description "$message" -icon "$iconPath" -button1 "Update Now" -defaultButton 1)

# Check which button was clicked
if [ "$buttonClicked" == "0" ]; then
    # "Update Now" button was clicked
    # Check if System Preferences is running and close it if it is
    if pgrep -x "System Preferences" > /dev/null; then
        osascript -e 'tell application "System Preferences" to quit'
        sleep 1
    fi
    # Open the Software Update pane in System Preferences
    open /System/Library/PreferencePanes/SoftwareUpdate.prefPane
    
    # Bring System Preferences to the front for the user to see
    osascript -e 'tell application "System Preferences" to activate'
fi

exit 0
