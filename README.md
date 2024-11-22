
## Installation

This service is a **systemd unit** designed to manage Bluetooth functionality during system sleep and wake transitions. Specifically, it disables Bluetooth before the PC enters sleep mode using `rfkill` and re-enables it after the PC wakes up.

### Why Use This Service?
Some Linux users experience issues with Bluetooth drivers when resuming from sleep, particularly with certain kernel versions. This problem manifests as a black screen, causing the system to hang. For example:

- **Kernel 6.11.x** has reported bugs causing the system to hang after waking from sleep.  
  References:  
  - [Kernel Bugzilla Report #219290](https://bugzilla.kernel.org/show_bug.cgi?id=219290)  
  - [Red Hat Bug Report #2320035](https://bugzilla.redhat.com/show_bug.cgi?id=2320035)  

This service provides a workaround by ensuring Bluetooth is cleanly stopped before sleep and restarted after wake.


### Installation
To install, execute the following command: 

```shell
sudo sh install.sh
```

To uninstall, execute the following command: 

```shell
sudo sh uninstall.sh
```
