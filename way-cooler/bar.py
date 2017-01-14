#!/usr/bin/python3

import sys
import datetime
import json
from time import sleep
from pydbus import SessionBus

BUS = SessionBus()
LAYOUT = BUS.get(bus_name='org.way-cooler', object_path='/org/way_cooler/Layout')

def main():
    while True:
        layout = json.loads(LAYOUT.Debug())
        workspaces = get_workspaces(layout)
        workspaces.sort()
        active_workspace = ""
        try:
            active_workspace = LAYOUT.ActiveWorkspace()
        except Exception:
            pass
        workspaces = " ".join(workspaces)
        workspaces = format_workspaces(workspaces, active_workspace)
        funcs = [workspaces + "%{c}",
                lambda: get_time() + "%{r}",
                get_battery]
        output = " "
        for func in funcs:
            if type(func) == str:
                output += func
                continue
            output += func()
        print(output)
        sys.stdout.flush()
        sleep(.1)

def get_workspaces(layout_json):
    """Gets the workspace names from the layout json"""
    if not layout_json:
        return []
    workspaces = layout_json['Root'][0]['Output']
    return [list(workspace.keys())[0].split('Workspace')[1].strip()
            for workspace in workspaces]

def get_time():
    return datetime.datetime.now().strftime('  %a %b %d  %H:%M  ')

def get_battery():
    with open("/sys/class/power_supply/BAT0/capacity", "r") as f:
        bat = f.readlines()
    return bat[0].strip() + "% Battery"

def format_workspaces(workspaces, active_workspace):
    workspaces = "  " + workspaces.replace(" ", "  ") + "  "
    active_workspace_format = (
            "%{B#009} " + active_workspace.strip() + " %{B#555}")
    workspaces = workspaces.replace(" " + active_workspace + " ",
            active_workspace_format)
    return workspaces



if __name__ == "__main__":
    main()
