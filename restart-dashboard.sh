#!/bin/bash
pkill chromium
sleep 2
snap run chromium --kiosk file:///home/$USER/Weather-Info-Dashboard/dashboard.html