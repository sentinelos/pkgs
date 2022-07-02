Sentinel OS packages
==============================

This repository contains the APKBUILD files for each and every
Sentinel OS package, along with the required patches and scripts,
if any.

It also contains some extra files and directories related to testing
(and therefore, building) those packages on Github.

If you want to contribute, please read the
[contributor guide](https://github.com/sentinelos/pkgs/blob/main/CONTRIBUTING.md).
and feel free to either submit a git patch on the Sentinel OS pkgs to submit a
pull request on [Github](https://github.com/sentinelos/pkgs/pulls).


Git Hooks
---------

You can find some useful git hooks in the `.githooks` directory.
To use them, run the following command after cloning this repository:

```sh
git config --local core.hooksPath .githooks
```
