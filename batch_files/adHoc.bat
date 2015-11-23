@ECHO OFF

@ECHO Creating hosted network

netsh wlan set hostednetwork mode=allow ssid=AdHox key=password

@ECHO SSID: AdHoc	Key: password

@ECHO Starting network

netsh wlan start hostednetwork

@ECHO Network started

@ECHO Press any key to stop network

PAUSE

@ECHO Stopping network

netsh wlan stop hostednetwork

@ECHO Network stopped, closing
