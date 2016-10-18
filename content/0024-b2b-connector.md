Title:    Neo900 Board-to-Board Connectors vs. the Tombstone Effect
Date:     2016-10-19
Category: news
Author:   hellekin
Slug:     neo900-b2b-connectors-vs-the-tombstone-effect
Tags:     b2b connectors, labs, tombstone

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
event can ruin the batch.  Fortunaly it's not as scary as it sounds:
production lines are aware of this problem and machines usually do the
job correctly.  Nevertheless it requires some special attention,
especially for Neo900 since UPPER-LOWER connectors don't have any
positioning aids, and still need (almost) perfect alignment.

Several options are under consideration:

- We could go for a Nokia-style FPC sandwich and use that to connect
  both boards.  As we care for your users, we would double this with a
  row of pads on the PCB next to the FPC connection, so that in case
  the FPC breaks, you could still fix the connection by soldering a
  new connecting 'cable' to these pads.  With extra care, we could opt
  for thermal vias under each of the B2B connection pads, so the
  connection could get 'reflowed' through the PCB.

  What to do then, with this complete batch of paperweight PCBAs that
  don't mate each other?  We need to ponder if we can at least glue
  the connections into place before reflow, so they won't move away in
  arbitrary directions.

- Or, we could use a fixation to keep the [B2B connectors] in the
  desired relative position to each other during reflow.  The fixation
  would take the form of some kind of 'gold master' to precisely
  position the two B2B counterparts, glued into place.  For both UPPER
  and LOWER we would need as many of these 'gold master' fixations as
  we want PCBs getting reflowed concurrently.  The component place
  engines are of known precision and the glue won't allow the
  connections to float/drift after placing them.  That approach looks
  promising, but the prospect of negotiating such workflow with the
  fab sounds nightmarish: if gluing is common, adding a temporary
  mechanical component to keep things aligned may not be so.

Here, a small insight into the complexity of research & development,
and how it goes way beyond simple puzzle solving: sometime venturing
into puzzle design can be puzzling.  Bottom-line: at this scale
details matter!


*[B2B]: Board to Board
*[ECM]: Electro-Mechanical Migration
*[EE]: Electronics Engineering
*[FPC]: Flexible Printed Circuit
*[PCB]: Printed Circuit Board
*[TLA]: Three Letter Acronym

[B2B connectors]: http://www.hirose.co.jp/cataloge_hp/ed_DF40_20140305.pdf
[reflow]: https://electronics.stackexchange.com/questions/27573/why-and-when-to-use-reflow-soldering
