# Practical 3: Develop and apply Puppet manifests

**Status:** Sample code, not yet run

## Aim

Write a manifest that manages a package, a file and a service.

## Procedure

```bash
sudo puppet parser validate site.pp
sudo puppet apply --noop site.pp   # preview
sudo puppet apply site.pp
curl http://localhost
```

**Expected result:** nginx is installed and running, and serves the page from the manifest.

## Files

- [`site.pp`](site.pp)
