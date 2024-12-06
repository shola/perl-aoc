### What is Perl?

From the Perl documentation:

Perl is a high-level programming language with an eclectic heritage written by Larry Wall and a cast of thousands. It derives from the ubiquitous C programming language and to a lesser extent from sed, awk, the Unix shell, and at least a dozen other tools and languages. Perl's process, file, and text manipulation facilities make it particularly well-suited for tasks involving quick prototyping, system utilities, software tools, system management tasks, database access, graphical programming, networking, and web programming. These strengths make it especially popular with system administrators and web developers, but mathematicians, geneticists, journalists, and even managers also use Perl. Maybe you should, too.

A good starting point for Perl information is http://www.perl.org/ 

### Random Notes
- `perl` is on mac's by default
- `cpan` (like `npm` for perl ecosystem) is on mac's by default
- Perl FAQs are available as part of your Perl distribution with the `perldoc perlfaq` command.
- [perl module documentation](https://www.cpan.org/modules/00modlist.long.html#PlayingYourPart)

### Impatient Perl notes

#### Page 10
1.8 Acronyms and Terms
Perl: Originally, "Pearl" shortened to "Perl" to gain status as a 4-letter word. Now considered an
acronym for Practical Extraction and Report Language, as well as Petty Eclectic Rubbish Lister. The
name was invented first. The acronyms followed. Note that this is "Perl" with a capital "P". The "perl"
with a lower case "p" refers to the executable found somewhere near /usr/local/bin/perl
CPAN: Comprehensive Perl Archive Network. See http://www.cpan.org for more.
DWIM: Do What I Mean. Once upon a time, the standard mantra for computer inflexibility was this: "I
really hate this darn machine, I wish that they would sell it. It never does what I want, but only what I
tell it." DWIM-iness is an attempt to embed perl with telepathic powers such that it can understand
what you wanted to write in your code even though you forgot to actually type it. Well, alright, DWIM
is just a way of saying the language was designed by some really lazy programmers so that you could
be even lazier than they were. (They had to write perl in C, so they could not be TOO lazy.)
AUTOVIVIFY: "auto" meaning "self". "vivify" meaning "alive". To bring oneself to life. Generally
applies to perl variables that can grant themselves into being without an explicit declaration from the
programmer. Part of perl's DWIM-ness. "Autovivify" is a verb. The noun form is "autovivification".
Sometimes, autovivification is not what you meant your code to do, and for some reason, when "do
what I mean" meets autovivification in perl, autovivification wins.
And now, a Haiku:
Do What I Mean and
Autovivification
sometimes unwanted
TMTOWTDI: There is More Than One Way To Do It. An acknowledgment that any programming
problem has more than one solution. Rather than have perl decide which solution is best, it gives you
all the tools and lets you choose. This allows a programmer to select the tool that will let him get his
job done. Sometimes, it gives a perl newbie just enough rope to hang himself.
Foo Fighters: A phrase used around the time of WWII by radar operators to describe a signal that could
not be explained. Later became known as a UFO. This has nothing to do with perl, except that "foo" is
a common variable name used in perl.
Fubar: Another WWII phrase used to indicate that a mission had gone seriously awry or that a piece of
equipment was inoperative. An acronym for Fouled Up Beyond All Recognition and similar
interpretations. This has nothing to do with perl either, except that fubar somehow got mangled into
foobar, and perl is often awash in variables named "foo" and "bar", especially if the programmer
wishes to hide the fact that he did not understand his code well en

#### Page 11

2 Storage
Perl has three basic storage types: Scalars, Arrays, and Hashes.
The most basic storage type is a Scalar.
Arrays and Hashes use Scalars to build more complex data types.