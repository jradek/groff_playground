.TL
My first groff document
.AU
Here comes the author name
.AI
This is my institution
.AB
Here is an abstract ...
.AE
.NH
First Section
.NH 2
Simple text with paragraphs
.PP
This is a paragraph. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue. Vehicula ipsum a arcu cursus vitae congue. Aliquet sagittis id consectetur purus ut faucibus pulvinar elementum. A condimentum vitae sapien pellentesque habitant morbi tristique.

A break without paragraph

.NH 2
Sub section heading (basic formating)
.PP
This text is
.B "bold"
hahaha and this is
.I "italic" !
Foo. Special handling for text directly before and after
.BI "extra text" AaaA BbbB
This should be \*{supersctipt\*} more
.BX "boxxed text"
and this is
.UL "underlined text"
fook

By the way, this document is compiled like this

.CW "conv -t ISO-8859-1 first.ms | groff -e -p -ms - | pstopdf -i -o first.pdf"

The flags
.CW "-e"
and
.CW "-i"
trigger the extension packages for
.I "e" qgn
and
.I "p" ic

.NH 2
Lists
.SH
Unordered lists
.IP \(bu 2
first
.IP \(bu 2
second
.SH
Ordered lists
.IP 1
first
.IP 2
second

.NH 2
Alignment
.DS C
here goes centered text with footnote\**
.FS
The text of the footnote!
.FE
more centered
.DE

.NH
Packages
.PP
some extension packages
.NH 2
Formulas created by eqn preprocessor
.EQ L
Z = {X + 1} over Y
.EN
and more complex stuff
.EQ
left ( pile {A above {c+d}
    above {u sup 2 + v sup 2}
    above {cos x}
} right )
.EN

.EQ
define thing %{$5 + $8}%
thing( A, B, C, D, E, F, G, H, I )
.EN

.EQ
define quadsol %{
$1 ~=~~ {
    - $3 +- sqrt {$3 sup 2 - 4 $2 $4}
    } over {2 $2}
}%
.EN

.EQ
delim $$
.EN

For the quadratic equation
$a x sup 2 + b x + c =0$
the solution is:
.EQ
quadsol(x, a, b, c)
.EN

.NH 2
figures created by pic preprocessor
.PS
ellipse "document";
arrow;
box width 0.6 "\fIpic\/\fP(1)"
arrow;
box width 1.1 "\fIgtbl\/\fP(1) or \fIgeqn\/\fP(1)" "(optional)" dashed;
arrow;
box width 0.6 "\fIgtroff\/\fP(1)";
arrow;
ellipse "PostScript"
.PE