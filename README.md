# monitor power
bash script that monitors if certain wifi ssid is there</br>
it uses https://github.com/stuartleeks/wsl-notify-send on windows</br>
linux just uses notify-send to sent notification to desktop environment</br>
</br>
The script loggs in to a kodi appliance on a raspberry pi to check if </br>
certain ssid is visible there.</br>
Router/AP is on main power grid not connected to generator grid, and is off</br>
when there is no grid power. When grid power is back router is up and</br>
ssid is detected, notifications are sent and script ends.

There is one issue I noticed. There was a power issue where on the power line
there were just 46 volt and the router managed somehow to power on.
