# Update-Bumper
This is a system that utilizes Jamf Helper and bash/osa scripting to notify a user that their computer is out of date. Once the user clicks "Update Now" System Preferences will automatically open and bring the update pane to the front of the screen.
It does not matter is System Preferences is already running and on a different pane, it will always reopen and bring up the updates pane. 

To deploy, copy the script and paste it into Jamf Pro as a new script.
Once added, change the following to your liking:

# User notification
title=
message=
# Icon
iconPath=

Add the script to a policy and scope your devices. I recommend using a smart group with the target minumum OS version, also make sure to exclude hardware that is not able to run the lastest versions of macOS.

This works on both Intel and Apple Silcon devices, tested on macOS Monteray and Ventura, I have not tested with a Sonoma beta.
