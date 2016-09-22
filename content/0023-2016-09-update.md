Title:    September 2016 Update
Date:     2016-09-22
Author:   hellekin
Slug:     neo900-update-2016-09-22

On our way to `proto_v2` layout!  Schematics are rolling with Eeshow.
Reaching out and European hacker events.
{: .lead :}

## Neo900 v2 Prototype

Recently we received 15+ BeagleBoard-xM to serve each as a virtual
<abbr title="System on Chip">SoC</abbr> for `proto_v2`.  As soon as
the layout and <abbr title="Printed Circuit Board">PCB</abbr>
manufacturing & assembling of `proto_v2` is done, we expect to have
10+ working prototypes that Neo900UG will ship to its team members and
selected Free Software developers.

Since we moved to KiCad the schematics work has taken pace: our
engineering team already updated the <abbr title="Break Out
Board">BOB</abbr> (μSD, flash, [hackerbus][], etc.), some LEDs (including
a component change, and a design omission for which Joerg found a nice
solution), much improved [IR][] design, sensors (eliminated two chips
and replaced/upgraded two others), a complete redesign of
the [SIM Switch][], plus smaller changes on a few more sheets.

More schematics updates are upcoming: WLAN, ECI, [IO expanders][] (new),
keyboard matrix, BB-xM interconnect, LOWER-UPPER interconnect pin
assignment, etc.

Since we moved to KiCad the schematics work has taken pace, and our
engineering team is slowly but surely going through the redesign of
the [SIM switch][] and the numerous details that need attention
(including making the automatic design checking (ERC) not cringing so
much on known issues and false alarms like missing connections in
order to show the real issues.)

At some point we're likely to call for a public review of the
schematics, before moving on to the layout phase.  If you're
interested, please let us know.

[hackerbus]: https://neo900.org/stuff/papers/hb.pdf
[IR]: https://neo900.org/stuff/papers/ir.pdf
[SIM switch]: https://neo900.org/stuff/papers/simsw.pdf
[IO expanders]: https://neo900.org/stuff/papers/iox.pdf

## Eeshow: A Visual Schema Diff Tool for KiCad

Werner [announced Eeshow][16a], a set of programs to visualize
differences between version of schematics produced with KiCad's
Eeschema. It's free software released under the GPL, and you can read
more about it, including a walkthrough of the GUI,
at <https://neo900.org/stuff/eeshow/>.  
[Eeshow's code][16b] lives on Neo900's git repository.

[16a]: https://lists.launchpad.net/kicad-developers/msg26055.html
[16b]:  https://neo900.org/git?p=eeshow;a=summary

## Where Are We At?

To break even, the project needs to produce and sell 800 Neo900
devices.  Currently, we have around 350 pre-orders, and sourced a bit
more than 100 N900 units to refurbish.

While we're moving on with EE, we still need to acquire hundreds more
of N900 in a good shape.  So, keep looking!

We also need to reach out to more people.  Another visit at the Chaos
Communication Congress can offer some visibility.  We're also
considering FOSDEM.  Are you going to these events?  Here, again, if
you have ideas and motivation to bring in more people, you're welcome!
