Title:    Neo900 Board-to-Board Connectors vs. the Tombstone Effect
Date:     2016-10-19
Category: news
Author:   hellekin
Slug:     neo900-b2b-connectors-vs-the-tombstone-effect
Tags:     b2b connectors, disco, tombstone

There is software.  There is hardware.  There is nightmare.  When
electronics engineering makes you lose sleep.  A venture into the
scary world of Tombstone.
{: .lead :}

## How to Connect Boards and Live with it

<q cite="Jan L. A. van de Snepscheut">In theory, there's no difference
between practice and theory.</q> In practice, there's electronic
engineering (EE).  To many, EE looks like Lego: you put colorful
pieces together and they all fit well.  Well, not quite.  As colorful
as they are, the pieces tend to give headaches from sourcing to
placement (and replacement).  On top of that, add several boards and
you're in for another dimension of complication.  You may think it's
an easy task for hardened engineers and OpenMoko veterans to fit the
pieces of the puzzle together.  As you contemplate masters at work,
their movement look natural, their painting obvious, their sculpture
seamless.  Yet as soon as you try it, you wonder how to get started.

For example: how do you connect the UPPER board of the Neo900 with the
LOWER board?

Easy I'd say: align the UPPER and LOWER boards, place the components
according to the specs, and let the [reflow] machine do its work:
done.  Right?

_Que nenni!_ How would you lay butter in a closed sandwich? Each board
has its components applied separately, so the boards need to match
exactly.  We're talking precision here. A tenth of a millimeter or
two. Well, I'd say, with Werner 'littlefinger' Almesberger on our
team, we can do magic. Indeed, you'd reply, but magic doesn't exist.

In theory, apply the map (schematics) to the territory (the SMD)
works.  But in practice, there's the **Tombstone effect**: this
happens when the solder paste applied to each component's pads don't
melt evenly, creating torque that will lift the tiny critter on its
side.

<video preload="auto" controls="auto">
<source src="https://b2aeaa58a57a200320db-8b65b95250e902c437b256b5abf3eac7.ssl.cf5.rackcdn.com/media_entries/11493/tombstone-3KiXlb3v924.webm" type="video/webm; codecs=&quot;vp8, vorbis&quot;"><p><a href="https://goblinrefuge.com/mediagoblin/u/hellekin/m/tombstone-effect/">Watch this video</a> on GoblinRefuge.</p></video>

See, when the solder paste changes phase, it can happen that a
component moves from its original position, it drifts slightly from
where it's supposed to be, and that "slightly" can make all the
difference between a working prototype and a wasted circuit.  No
matter how precise you are, nor what soldering technique you use, here
you enter the fantastic realm of chemical complexity, fluid mechanics,
and homegeneity.

In the prototype phase, you would resolder the faulty component and
that would take a few hours at most.  But in production, this type of
event can ruin the batch.  Fortunately it's not as scary as it sounds:
production lines are aware of this problem and machines usually do the
job correctly.  The tombstone effect is not what bothers our beloved
engineers though--I was just being spooky: it only illustrates an
extreme case of this _floating component_ effect that can makes them
drift from their position.

In Neo900 case, the issue is to place the board connectors between
UPPER and LOWER in a way that will have them clip perfectly into
place.  B2B connectors are much bigger than say, a transitor, so the
dreaded effect is just a boring annoyance that requires some special
attention.  On the other hand, being like long Lego bricks, a little
angle may result in a comparable result: no connection.

Several options are under consideration.  B2B connectors come in
different forms and with a variety of features, ranging from no
positioning aids to full stability.  An alternate solution to
fully-place-able connectors consists in creating a 'gold master'
fixation that matches the board and desired relative positions of the
B2B connectors, and glue that temporarily to the board before
reflowing: that way we can ensure mechanically that the connectors
will clip like Lego bricks.  This however would require extra work for
the lab...

Here, a small insight into the complexity of research & development,
and how it goes way beyond simple puzzle solving: sometime venturing
into puzzle design can be puzzling.  EE is not only electronics: the
mechanical constraints and market constraints come into play more
often than not.  Bottom-line: at this modest scale details matter!

Thank you for your attention,

hellekin for Neo900 Team.

*[B2B]: Board to Board
*[ECM]: Electro-Mechanical Migration
*[EE]: Electronics Engineering
*[FPC]: Flexible Printed Circuit
*[PCB]: Printed Circuit Board
*[SMD]: Surface-Mounted Device
 *[TLA]: Three Letter Acronym

[B2B connectors]: http://www.hirose.co.jp/cataloge_hp/ed_DF40_20140305.pdf
[reflow]: https://electronics.stackexchange.com/questions/27573/why-and-when-to-use-reflow-soldering
