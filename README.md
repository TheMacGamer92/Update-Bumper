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



An example of the pop-up message:

<img width="526" alt="Screenshot 2023-09-19 at 2 09 59 PM" src="https://github.com/TheMacGamer92/Update-Bumper/assets/145491705/3aa691a6-9923-4072-8725-b1628896642c">
