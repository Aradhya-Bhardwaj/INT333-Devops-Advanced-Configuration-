# Practical 6: Dynamic resource management using Puppet

**Status:** Sample code, not yet run

## Aim

Use facts and a template so the configuration adapts to each machine.

## Procedure

```bash
sudo puppet apply dynamic.pp
cat /etc/motd
```

**Expected result:** `/etc/motd` shows this machine's host name, OS and memory.

## Files

- [`dynamic.pp`](dynamic.pp)
