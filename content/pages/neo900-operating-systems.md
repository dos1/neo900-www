title:       Supported Operating Systems
date:        2016-11-19
category:    software
status:      draft

## Neo900 Operating System
### Or Why Maemo Needs to Change?

Maemo is the recommended OS for Neo900.  It's based on Debian, and was
the original system for the Nokia N900.  Since Nokia abandoned ship
and turned to proprietary software, the Maemo community took over.

Maemo pre-dates the mandatory use of `systemd` in Debian and has
relevant core functionality that depend on `cgroups`, a Linux kernel
functionality (which is not 100% available under `systemd` seizing
`cgroups`.)  As Debian depends more and more on `systemd` integration,
it will drift away from Maemo as it is now, especially with regard to
minimum system requirements that would someday forbid to install it on
our hardware.

`/bin` and `/sbin` were traditionally used to include those binaries
required by the system at boot, before mounting any other filesystem
partitions, e.g., in `/usr`.  That limited the extent of disk space
required by the minimal system, and allowed to mount extra software
from another partition.  But the recent decision to merge these two
directories under `/usr` means either an inflated root partition of
several gigabytes, or duplication of the executables in mounted
overlays after the system has booted.  From our perspective, that
rules out Debian for typical embedded systems where you only have
between 128MB and a _huge_ 1GB of root NAND storage to boot from.
(For comparison N900 has 256MB of NAND, and Neo900 has 512MB.)

As we're striving for minimalism and long term support of the
recommend OS, we've been discussing these issues with the Maemo
community and the Devuan community.  What's coming to the horizon is
that Maemo will switch upstream from Debian to Devuan, the Debian fork
without `systemd`.  This way, we get the best of both worlds:
continuity for Maemo development, and a default OS based on Devuan for
mobiles!

We must thank _freemangordon_ and _Pali_ on the Maemo side, and
_parazyd_ on the Devuan side for making this possible.  Heads up!
These are free software projects, and you are welcome to participate:
both the Fremantle Porting Task Force (`Pali`, `Freemangordon` aka
Ivo, and others) as well as the [Devuan project](https://devuan.org/)
need more active developers to help with those very important tasks.
