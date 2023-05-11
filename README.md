# monitor power
bash script that monitors if certain wifi ssid is there
it uses https://github.com/stuartleeks/wsl-notify-send on windows
linux just uses notify-send to sent notification to desktop environment

The script loggs in to a kodi appliance on a raspberry pi to check if 
certain ssid is there and sends notification when power is back on the grid.
Router/AP is on main power grid not connected to generator grid, and is off
when there is no grid power. When grid power is back router is up and
ssid is detected.

