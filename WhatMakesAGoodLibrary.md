# OpenSCAD-Compendium  

Constructive Solid Geometry (CSG) CAD/CAM Component Base Designed for Fast Development

#Design Philosophy

Here is the fundamental viewpoint change for VDI versus other library attempts: you are not coding CSG for next week, you are building a library that will outlast the initial implementations for a thousand years. Throw out the cram and dump mentality. The only way we effectively reuse what was build before us is by slow, methodical improvements assuming infinite timelines. 

The goal of combining disparate libraries of OpenSCAD source code into a comprehensive resource that allows people worldwide to work together on weapons for the defence of the West against corrupt communist evil. 

The objective shall be met when enough people can find what they need fast enough to make redesign of systems in production within weeks. That's the only outcome that matters.

This library started out with the humble beginning of just amassing other's disparate works. Putting enough together, it's clear the work done is substantial. What's ALSO clear is people that don't want to work together force themselves to redo and recreate the same things over and over...

This need to remain independent forces duplications and poor documentation combined with limited testing and evaluation. Some have great documentation, some have clear code, some have "make check" for everything. But nobody has it all. 

Don't take the rugged individual pioneer mantle too lightly, everyone is building on other's works. You will find with enough digging a paper from the 1960's or so that lays out what you thought you innovated. 

This then falls on the need to document, to provide COMPLETE example sets (by complete it means enough library function and module calls are exposed and explained so that a bachelor's - level engineer might figure out what to do in a week or less), and to combine and simplify all data, functions, modules, and the mathematics for each of them so that others can contribute EASILY. 

There are no small jobs and there are no silly wastes of time. If you can explain something - like how rotational extrusions work - in addition to another way already provided then you aren't wasting someone's time reading it you are giving a subset of the audience the right way to understand it. For them. 

Why am I qualified to lead this effort? I was a defence scientist that built my first standards library ( libdrdc https://github.com/DaemonDave/libdrdc-Interoperability-Data-Standards-Library ) in 2015 because of the need to extricate, isolate, and commonify things most scientist take for granted 

How do you help when this sounds so complicated? Easy: make something small and make sure it works. Then submit it, once it's given some constructive criticism in review, and then expect to and make small changes. That's it. 

IF YOU ARE A NEW ENGINEER AND NEED A LETTER OF REFERENCE THEN MAKE GOOD CODE AND SUBMIT IT AND I WILL GIVE YOU ONE. Your work here will be seen worldwide and outlast your career. Isn't that enough of an impact to deserve credit?

Here is the kick-off development plan:

#Compendium Development Plan:

Phase 1: Amassing - the goal is to bring together all the code source files that can be found for the purpose of unified consideration. We need to bring everything together in one place so as to understand what's in and what's missing.
Phase 2: Commonizing - the goal is to adjust to a common nomenclature, common units, and common symbols so as to make learning, using and expanding so as to allow the most people to 
Phase 3: Documenting - the goal is to bring everything under this ontolog into a commonized documentation system. From a cursory review of Belfry and openscad-amu, I've picked openscad-amu but it should admit many systems. Here is where internationalization and multi-language localization takes place. 
Phase 4: Expanding - the best library system is the one that allows one to build from the ground up through common features 
Phase 5: Assimilating - once everything has a common form and format, bring in extras like BRL-CAD to expand what can be done and where this applies. 

All phases will be done in parallel...

# What Makes a GOOD LIBRARY?

IT MUST BE IN ENGLISH SO IF YOUR ENGLISH ISN'T PASSABLE LEAVE ENOUGH MATH SOMEONE CAN FORM YOUR INTENT.
ENGLISH IS THE LANGUAGE OF ENGINEERING BASED ON IEEE, SPIE, ASME, ASCE, etc. TECHNICAL ORGANIZATIONS  (https://en.wikipedia.org/wiki/List_of_engineering_societies and https://en.wikipedia.org/wiki/List_of_technical_standard_organizations)

STOP A PUSH BEFORE YOU WASTE SOMEONES PRECIOUS TIME.

CLEAR - It is clear what this area of functions does, or what it covers.

COMPLETE - It provides all the needed functions modules that are commonly needed. It separates the basic function out into a solu

TESTED - Every function needs to be tested - hopefully automagically through automated testing - and in many ways test cases expose bugs / errors / defects but also 

SIMPLE - the application programmer interface hides basic details but exposes how to use them. IT hides the hard work. IT uses common nomenclature, not niche idiomatic speech (no, we don't care how it's described on ncatlab.org if that isn't commonplace terms), and it takes efforts to isolate and unify different ways of fulfilling it. If you need to bring in 
