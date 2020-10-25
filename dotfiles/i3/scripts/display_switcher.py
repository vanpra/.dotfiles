#!/usr/bin/env python3
import pyudev
import subprocess
import os

from pyudev import Device
from typing import Optional

def udev_event_received(device: Optional[Device]):
    display_cmd = ["sh", "-c", "xrandr | grep ' connected'"] 
    displays = str(subprocess.check_output(display_cmd))
    if (displays.count("connected") >= 2):
        os.system("autorandr docked")
    else:
        os.system("autorandr mobile")
        

context = pyudev.Context()
monitor_drm = pyudev.Monitor.from_netlink(context)
monitor_drm.filter_by(subsystem='drm')
observer_drm = pyudev.MonitorObserver(monitor_drm, callback=udev_event_received, daemon=False)
udev_event_received(None)

observer_drm.start()
observer_drm.join()
