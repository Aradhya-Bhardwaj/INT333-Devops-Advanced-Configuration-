# Practical 5: Set up Puppet master-agent architecture

**Status:** Steps only, not yet run

## Aim

Connect an agent to a Puppet server and exchange certificates.

## Procedure

Use two VMs. On both, add the server and agent names to `/etc/hosts` (for example `192.168.1.10 puppet` and `192.168.1.11 agent1`).

**On the server**

```bash
sudo hostnamectl set-hostname puppet
sudo apt update && sudo apt install -y puppetserver
sudo systemctl enable --now puppetserver
```

**On the agent**

```bash
sudo hostnamectl set-hostname agent1
sudo apt update && sudo apt install -y puppet-agent
sudo puppet config set server puppet --section main
sudo puppet agent --test        # sends a certificate request
```

**Back on the server**

```bash
sudo puppetserver ca list
sudo puppetserver ca sign --certname agent1
```

Run `sudo puppet agent --test` on the agent again. Find the server's manifest folder with `sudo puppet config print manifest --section server` and put `site.pp` there.

**Expected result:** the certificate is signed and the agent applies the server's manifest. Allow TCP port 8140 between the VMs.

## Files

- [`site.pp`](site.pp)
