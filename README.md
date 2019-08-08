# add_hx_vlan
Python script to add a new VLAN to Cisco HyperFlex system with VMware vCenter

*** version 0.9.8, still in development, for lab or test environments only! ***

*** This has been tested on UCSM v4.0, HyperFlex v3.5 and vCenter/vSphere v6.7 ***

*** prompts for new VLAN name and ID (can include multiple IDs, i.e. 2, 73, 76-77, 1000-1010...) ***

This build leverages Alpine Linux, Python 2.7 and UCS Python SDK v0.9 and pyvmomi in a Docker container.

How to build the image

docker build --no-cache -t add_hx_vlan-img https://github.com/trblemakar/add_hx_vlan.git

How to run the program for the first time

docker run -it --name add_hx_vlan add_hx_vlan-img
(will prompt for HX Connect IP/password, new VLAN name/ID, UCSM password and vCenter username/password)

How to re-run the program (container) once created

docker start -ia add_hx_vlan
