# Practical 1: Install and configure a virtualization platform

**Status:** Steps only, not yet run

## Aim

Set up Oracle VirtualBox and import the VMs used for Puppet and Ansible practice.

## Procedure

1. Download Oracle VirtualBox from https://www.virtualbox.org/wiki/Downloads and install it.
2. Download the Ubuntu Server 24.04 ISO from https://ubuntu.com/download/server.
3. In VirtualBox choose **New**, then give the VM 2 CPUs, 4 GB RAM and a 25 GB disk.
4. Install Ubuntu and enable the OpenSSH server during setup.
5. Clone the VM to make a second machine (`puppet-agent`), generating new MAC addresses.
6. Set both VMs to a **Bridged Adapter** or a shared **NAT Network** so they can reach each other.
7. If your course provides ready-made VMs, use **File, Import Appliance** instead of steps 2 to 4.

**Expected result:** both VMs boot and can `ping` each other.
