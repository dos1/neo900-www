Title:    Neo900 Board-to-Board Connectors vs. the Tombstone Effect
Date:     2016-10-21
Category: news
Author:   hellekin
Slug:     neo900-b2b-connectors-vs-the-tombstone-effect
Tags:     b2b connectors, disco, tombstone

There is software.  There is hardware.  There is nightmare.
Hellekin's venture into the scary world of Tombstone.
{: .lead :}

## How to Connect Boards and Live with it

To many, EE looks like Lego: you put colorful pieces together and they
all fit well.  As you contemplate masters at work, their movement look
natural, their painting obvious, their sculpture seamless.

You may think it's an easy task for hardened engineers and OpenMoko
veterans to fit the pieces of the puzzle together.  Well, not quite.
As colorful as they are, the pieces tend to give headaches from
sourcing to placement (and replacement).  Electronics engineers not
only have to deal with the inherent complexity of their field, they
also need to care for the economics part (are these pieces available?
Will this supplier be shipping in time? Etc.)

Trying to follow the daily conversations between Joerg and Werner
regarding the details of the Neo900 design, I often feel like a
trainee who knows not enough to wonder in awe, and just enough to
understand this is definitely not as easy as they make it look.  They
start throwing TLAs all around and then obscure deep-links that get
you to PDFs that cannot shy in comparison to EU law and bureaucratic
jargon: in my library, they'd all go to the same 'encrypted books'
where I store Chinese and Farsi presents I might read when someone
visits and knows the language.  Yet these two seem like ballet dancers
at the Bolchoi, catching meaning in mid-air, responding to each other
with references I can't fathom, yet alone catch a causal link between
one line and the next.

> In theory, there's no difference between theory and practice. In
  practice, there is.  
  -- Jan L. A. van de Snepscheut

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
works.  But in practice, there are many details to look out for that
may ruin the show if not considered carefully.  Without going to the
extremes of mass-manufacturing mishaps like the recent exploding
Samsung Galaxy Note 7, which seems to have been a terrible disaster,
but when put into perspective, only represents a mere 0.01% of devices
produced, and a total loss of 1% of their annual revenue, electronics
has its non-deterministic magic, like the **Tombstone effect**: this
happens when the solder paste applied to each component's pads don't
melt evenly, creating torque that will lift the tiny critter on its
side.

<video preload="auto" controls="auto">
<source src="https://b2aeaa58a57a200320db-8b65b95250e902c437b256b5abf3eac7.ssl.cf5.rackcdn.com/media_entries/11493/tombstone-3KiXlb3v924.webm" type="video/webm; codecs=&quot;vp8, vorbis&quot;"><p><a href="https://goblinrefuge.com/mediagoblin/u/hellekin/m/tombstone-effect/">Watch this video</a> on GoblinRefuge.</p></video>

See, when the solder paste changes phase, it can happen that a
component moves from its original position, it drifts slightly from
where it's supposed to be, and that "slightly" can make all the
difference between a working device and a wasted circuit.  No
matter how precise you are, nor what soldering technique you use, here
you enter the fantastic realm of chemical complexity, fluid mechanics,
and homegeneity.

In the prototype phase, you would resolder the faulty component and
that would take a few hours at most.  But in production, this type of
event can ruin the batch.  Samsung didn't fall for this, but for
pressing a bit too much the Lithium Ion battery, leading to a fragile
battery: when they heat up, a damaged cell can ignite the volatile and
flamable chemicals filling the pressurized battery.  This happens all
the time to many products: from hoverboards to Tesla cars, and even
laptops and iPhones.  Cases abound over the years.  Of course the
larger the production, the higher the probability of something going
wrong.

Fortunaly it's not as scary as it sounds: production lines are aware
of these issues and engineers making machines take a lot of
precautions to lower the probabilities to extreme rarity.  But still,
it requires a lot of attention.

I learned about the tombstone effect as an extreme (and fun)
illustration of _drifting_ components: that using SMD technology,
sometimes a small component can _float_ in the soldering paste as it
liquefies, eventually leading to this funny effect (also called
Manhattan effect for its vague resemblance to the skyline in New York
City--it would take a serious amount of unluck to 'grow' several
capacitors at once).

Joerg wanted to explain to me the problematic of using B2B connectors
between UPPER and LOWER boards.  The case is different from either the
exploding batteries and the tombstone effect, as the connectors are
rather large components.  Yet, their relative alignment on the board
require a precision of about 0.2 mm so they can clip in easily.
 
In the course of my understanding I went from awe to boredom, since I
discovered that kind of considerations can look scary (especially when
it concerns mass-production and the consequent recalls like the case
of Samsung Galaxy Note 7) but are in fact one in a myriad of elements
experienced engineers need to take into account on a daily basis.  And
that's what makes the difference between _looking easy_ and _being
easy_.

Here, a small insight into the complexity of research & development,
and how it goes way beyond simple puzzle solving: sometimes, venturing
into puzzle design can be puzzling.  Bottom-line: at any scale details
matter!


*[B2B]: Board to Board
*[ECM]: Electro-Mechanical Migration
*[EE]: Electronics Engineering
*[FPC]: Flexible Printed Circuit
*[PCB]: Printed Circuit Board
*[TLA]: Three Letter Acronym

[B2B connectors]: http://www.hirose.co.jp/cataloge_hp/ed_DF40_20140305.pdf
[reflow]: https://electronics.stackexchange.com/questions/27573/why-and-when-to-use-reflow-soldering
