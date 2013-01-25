iOS TrustMe
===========

An extreme method of disabling most certificate verification checks within iOS applications.
TrustMe will defeat certificate pinning in most cases. 

Description
-----------

Requires a jailbroken device. This "Tweak" disables the SecTrustEvaluate. It should
only be used on testing devices with no personal data or information, since this 
will completely disable most SSL safeguards. 

Requirements
------------
 * MobileSubstrate (Should come with jailbroken devices)
 * dpkg (Install from Cydia)

Installation
------------
Download the dpkg 

	wget https://www.dropbox.com/s/zyltyoa7s1x3m47/com.intrepidusgroup.trustme_0.1-4_iphoneos-arm.deb

	dpkg -i com.intrepidusgroup.trustme_0.1-4_iphoneos-arm.deb

Usage
------------
To disable it, uninstall the deb:

	dpkg -r com.intrepidusgroup.trustme

Alternately, you can edit the plist located at /Library/MobileSubstrate/DynamicLibraries/trustme.plist

Documentation on the format of the plist can be found at

	http://iphonedevwiki.net/index.php/MobileSubstrate


Build
-----------
Building requires theos. 

	http://iphonedevwiki.net/index.php/Theos

This is a Theos 'tweak' project. Use theos to create the required files and then run:

	make
