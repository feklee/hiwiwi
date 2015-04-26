Introduction
============

*hiwiwi* is a custom desktop environment made for use on a
[ThinkPad T550 20CJS01P00][1] with Arch Linux.

Guidelines:

  * System is controlled via the command line.

  * Easy to grasp UI, clearly laid out: Everything is visible all the time in a
    classic windowing system.

  * Good visibility on a high DPI screen: 2880×1620 px / 15.5"

  * Vertical screen real estate is for content.

It may be interesting to make the system adapt to different screen resolutions.


Installation
============

Steps:

  * Link dot files to their respective places below `$HOME`.

  * Install software that is needed. Look in `.xinitrc`. Concerning
    compatibility, consider the age of the last modification / commit.


Known issues
============

  * Emacs 24.5.1 doesn’t play well with GDK scaling. To get a usable scrollbar,
    see the [workaround][2] posted on 2015-04-26 WEST in the Arch Linux Forums.


License
=======

Except where noted otherwise, files are licensed under the WTFPL.

Copyright © 2015 [Felix E. Klee](felix.klee@inka.de)

This work is free. You can redistribute it and/or modify it under the terms of
the Do What The Fuck You Want To Public License, Version 2, as published by Sam
Hocevar. See the COPYING file for more details.

[1]: http://support.lenovo.com/us/en/products/laptops-and-netbooks/thinkpad-t-series-laptops/thinkpad-t550/20cj/s01p00
[2]: https://bbs.archlinux.org/viewtopic.php?pid=1523352#p1523352
