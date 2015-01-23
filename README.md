Docker-ovftool
=============
```Docker-ovftool``` allows you to build a docker container that includes ```ovftool```.  It does not currently represent a distributed container since ```ovftool``` cannot be distributed by VMware license.

```Ovftool``` the application and information is available from VMware at https://www.vmware.com/support/developer/ovf/.  It's primary purpose is to assist in distributing uploading OVF/OVA to the proper platforms, ie. vSphere/vCloud Director and creating VM/VApp/vCloud VApp's based on the OVF specification.  It represents the most mature toolset for completing these tasks that continually is updated by VMware.  It is common to see applications wrap this toolset versus building the capability themselves.

Building the container
-------
1. ```git clone https://github.com/emccode/Docker-ovftool```
2. Download your desired ```ovftool``` binary from the VMware download site and place in the ```Docker-ovftool``` directory.
3. Enter the ```Docker-ovftool``` directory.
4. Edit the ```Dockerfile``` and replace the file name with the appropriate file name.
5. Run ```docker build -t "ovftool:version" .```

You can save this Docker container to private registries, or whichever way makes the most sense internally at this point.

Running the container
---------------------
The container automatically issues a ```--help``` if there are no commands listed.

As an example of usage here we use ```ovftool``` to upload a CoreOS OVF file to a vCloud Director VApp. CoreOS is a work in progress with vCD, but use this as an example of how it should work.

```docker run -ti ovftool:4.0.0 --acceptAllEulas http://alpha.release.core-os.net/amd64-usr/561.0.0/coreos_production_vmware_ova.ova "vcloud://yourname@domain@us-virginia-1-4.vchs.vmware.com:443?org=ae010611-6b0b-4f56-a468-ce81f196b51b&vdc=VDC1&vapp=coreos01"```


Licensing
---------
Licensed under the Apache License, Version 2.0 (the “License”); you may not use this file except in compliance with the License. You may obtain a copy of the License at <http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

Support
-------
Please file bugs and issues at the Github issues page. For more general discussions you can contact the EMC Code team at <a href="https://groups.google.com/forum/#!forum/emccode-users">Google Groups</a>. The code and documentation are released with no warranties or SLAs and are intended to be supported through a community driven process.
