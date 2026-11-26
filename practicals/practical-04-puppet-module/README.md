# Practical 4: Puppet module creation and deployment

**Status:** Sample code, not yet run

## Aim

Package configuration into a reusable module with a class, parameter and template.

## Procedure

Run from this folder:

```bash
sudo puppet apply --modulepath=$PWD/modules -e 'include webserver'
sudo puppet apply --modulepath=$PWD/modules -e 'class { "webserver": title_text => "DropWatch lab" }'
```

**Expected result:** the web page shows the title passed to the class.

## Files

- [`modules/webserver/manifests/init.pp`](modules/webserver/manifests/init.pp)
- [`modules/webserver/templates/index.html.epp`](modules/webserver/templates/index.html.epp)
