# Update-Bumper

Overview:
This is a system that utilizes Jamf Helper and shell/osa scripting to notify a user that their Mac is out of date. Once the user clicks "Update Now" System Preferences will automatically open and bring the update pane to the front of the screen.
It does not matter if System Preferences is already running and on a different pane, it will always reopen and bring up the update pane. This is meant to make bumping users to update as simple as possible, not utilizing any external apps (other than Jamf helper) and to make update management and scaling easier. 

Supported systems:
This works on both Intel and Apple Silcon devices, tested on macOS Monteray and Ventura, I have not tested with a Sonoma beta.


Deployment:
To deploy, copy the script and paste it into Jamf Pro as a new script.
Once added, change the following to your liking:

# User notification
title=

message=
# Icon
iconPath=

Add the script to a policy and scope your devices. I recommend using a smart group with the target minumum OS version, also make sure to exclude hardware that is not able to run the lastest versions of macOS.
I would also recomend pushing a config profile that tells computers to automatically download updates as they release.

You are free to use Update Bumper as you please.

An example of the pop-up message:

<img width="526" alt="Screenshot 2023-09-19 at 2 09 59 PM" src="https://github.com/TheMacGamer92/Update-Bumper/assets/145491705/3aa691a6-9923-4072-8725-b1628896642c">
