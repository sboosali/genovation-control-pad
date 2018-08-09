==================================================






==================================================
Naming: Brackets

https://en.wikipedia.org/wiki/Bracket

----------------------------------------

===

Brackets:

* round brackets (a.k.a. "parentheses")
* square brackets
* curly brackets (a.k.a. "braces")
* angle brackets (a.k.a. "chevrons")

===

Unqualified "bracket":

- in modern American, usually the square bracket;
- in modern British, usually the round bracket.

===

----------------------------------------


----------------------------------------


==================================================
Naming: Quotes

----------------------------------------

guillemets	‹ ›  « »

quotation marks	‘ ’  “ ”  ' '  " "

----------------------------------------


==================================================
Naming: (Miscellaneous) Characters

----------------------------------------

pilcrow	¶

slash, stroke, solidus	/  ⧸  ⁄

underscore, understrike	_

----------------------------------------


==================================================
== `deriving` templates

-- nullary type (default)
deriving (Show,Read,Eq,Ord,Lift,Generic,NFData,Hashable)

-- enum-like
deriving (Show,Read,Eq,Ord,Enum,Bounded,Lift,Generic,NFData,Hashable)

-- unary type
deriving (Show,Read,Eq,Ord,Functor,Foldable,Traversable,Generic,NFData,Hashable)

-- string-like
newtype STRINGTYPE = STRINGTYPE String
 deriving (Show,Read,Eq,Ord,Lift,Generic,NFData,Hashable,Semigroup,Monoid,IsString)

-- list-like
newtype LISTTYPE   = LISTTYPE [ITEMTYPE]
 deriving (Show,Read,Eq,Ord,Lift,Generic,NFData,Hashable,Semigroup,Monoid,IsList)

==================================================
PS/2 ScanCodes

http://www.vetra.com/scancodes.html

----------------------------------------

|===============|======================|======================|======================|==========|===========|
|IBM Key Number | Set 1 (Make / Break) | Set 2 (Make / Break) | Set 3 (Make / Break) | BaseCase | UpperCase |
|===============|======================|======================|======================|==========|===========|


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">1</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">29/A9</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">0E/F0 0E</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">0E/F0 0E</font></td> 
    <td width="13%">
    <p></p><center><font size="-1" face="Arial">&nbsp;`</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">~</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">2</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">02/82</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">16/F0 16</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">16/F0 16</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">1</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">!</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">3</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">03/83</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">1E/F0 1E</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">1E/F0 1E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">2</font></center></td>
    <td width="9%">
    <p></p><center><font size="-1">&nbsp;</font><font size="-1" face="Arial">@</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">4</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">04/84</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">26/F0 26</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">26/F0 26</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">3</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">#</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">5</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">05/85</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">25/F0 25</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">25/F0 25</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">4</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">$</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">6</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">06/86</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">2E/F0 2E</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">2E/F0 2E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">5</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">%</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">7</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">07/87</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">36/F0 36</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">36/F0 36</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">6</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">^</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">8</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">08/88</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">3D/F0 3D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">3D/F0 3D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">7</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">&amp;</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">9</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">09/89</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">3E/F0 3E</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">3E/F0 3E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">8</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">*</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">10</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">0A/8A</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">46/F0 46</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">46/F0 46</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">9</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">(</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">11</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">0B/8B</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">45/F0 45</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">45/F0 45</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">0</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">)</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">12</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">0C/8C</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">4E/F0 4E</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">4E/F0 4E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">-</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">_</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">13</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">0D/8D</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">55/F0 55</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">55/F0 55</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">=</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">+</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">15</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">0E/8E</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">66/F0 66</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">66/F0 66</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Backspace</font></center></td>
    <td width="9%"></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">16</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">0F/8F</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">0D/F0 0D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">0D/F0 0D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Tab</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">17</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">10/90</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">15/F0 15</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">15/F0 15</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">q</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Q</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">18</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">11/91</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">1D/F0 1D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">1D/F0 1D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">w</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">W</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">19</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">12/92</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">24/F0 24</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">24/F0 24</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">e</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">E</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">20</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">13/93</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">2D/F0 2D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">2D/F0 2D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">r</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">R</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">21</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">14/94</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">2C/F0 2C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">2C/F0 2C</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">t</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">T</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">22</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">15/95</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">35/F0 35</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">35/F0 35</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">y</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Y</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">23</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">16/96</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">3C/F0 3C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">3C/F0 3C</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">u</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">U</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">24</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">17/97</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">43/F0 43</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">43/F0 43</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">i</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">I</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">25</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">18/98</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">44/F0 44</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">44/F0 44</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">o</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">O</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">26</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">19/99</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">4D/F0 4D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">4D/F0 4D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">p</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">P</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">27</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">1A/9A</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">54/F0 54</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">54/F0 54</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">[</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">{</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">28</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">1B/9B</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">5B/F0 5B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">5B/F0 5B</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">]</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">}</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">30</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">3A/BA</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">58/F0 58</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">58/F0 58</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Caps Lock</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">31</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">1E/9E</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">1C/F0 1C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">1C/F0 1C</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">a</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">A</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">32</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">1F/9F</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">1B/F0 1B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">1B/F0 1B</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">s</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">S</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">33</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">20/A0</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">23/F0 23</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">23/F0 23</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">d</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">D</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">34</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">21/A1</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">2B/F0 2B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">2B/F0 2B</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">f</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">35</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">22/A2</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">34/F0 34</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">34/F0 34</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">g</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">G</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">36</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">23/A3</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">33/F0 33</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">33/F0 33</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">h</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">H</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">37</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">24/A4</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">3B/F0 3B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">3B/F0 3B</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">j</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">J</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">38</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">25/A5</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">42/F0 42</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">42/F0 42</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">k</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">K</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">39</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">26/A6</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">4B/F0 4B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">4B/F0 4B</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">l</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">L</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">40</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">27/A7</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">4C/F0 4C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">4C/F0 4C</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font face="Arial">;</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">:</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">41</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">28/A8</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">52/F0 52</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">52/F0 52</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">'</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">"</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">43</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">1C/9C</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">5A/F0 5A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">5A/F0 5A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Enter</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Enter</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">44</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">2A/AA</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">12/F0 12</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">12/F0 12</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Left Shift</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">46</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">2C/AC</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">1A/F0 1A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">1A/F0 1A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">z</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Z</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">47</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">2D/AD</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">22/F0 22</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">22/F0 22</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">x</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">X</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">48</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">2E/AE</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">21/F0 21</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">21/F0 21</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">c</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">C</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">49</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">2F/AF</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">2A/F0 2A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">2A/F0 2A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">v</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">V</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">50</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">30/B0</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">32/F0 32</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">32/F0 32</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">b</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">B</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">51</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">31/B1</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">31/F0 31</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">31/F0 31</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">n</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">N</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">52</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">32/B2</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">3A/F0 3A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">3A/F0 3A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">m</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">M</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">53</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">33/B3</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">41/F0 41</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">41/F0 41</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">,</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">&lt;</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">54</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">34/B4</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">49/F0 49</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">49/F0 49</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">.</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">&gt;</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">55</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">35/B5</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">4A/F0 4A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">4A/F0 4A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">/</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">?</font></center></td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">57</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">36/B6</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">59/F0 59</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">59/F0 59</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Right Shift</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">58</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">1D/9D</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">14/F0 14</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">11/F0 11</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Left Ctrl</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">60</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">38/B8</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">11/F0 11</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">19/F0 19</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Left Alt</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">61</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">39/B9</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">29/F0 29</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">29/F0 29</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Spacebar</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">62</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 38/E0 B8</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 11/E0 F0 11</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">39/F0 39</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Right Alt</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">64</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 1D/E0 9D</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 14/E0 F0 14</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">58/F0 58</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Right Ctrl</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">75</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 52/E0 D2 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 70/E0 F0 70 (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">67/F0 67</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Insert</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">76</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 4B/E0 CB (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 71/E0 F0 71 (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">64/F0 64</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Delete</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">79</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 4B/E0 CB (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 6B/E0 F0 6B (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">61/F0 61</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Left Arrow</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">80</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 47/E0 C7 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 6C/E0 F0 6C (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">6E/F0 6E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Home</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">81</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 4F/E0 CF (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 69/E0 F0 69 (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">65/F0 65</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">End</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">83</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 48/E0 C8 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 75/E0 F0 75 (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">63/F0 63</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Up Arrow</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">84</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 50/E0 D0 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 72/E0 F0 72 (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">60/F0 60</font></td> 
    <td width="13%">
    <p></p><center><font size="-1">&nbsp;</font><font size="-1" face="Arial">Down
    Arrow</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">85</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 49/E0 C9 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 7D/E0 F0 7D (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">6F/F0 6F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Page Up</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">86</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 51/E0 D1 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 7A/E0 F0 7A (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">6D/F0 6D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Page Down</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">89</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 4D/E0 CD (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 74/E0 F0 74 (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">6A/F0 6A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Right Arrow</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">90</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">45/C5</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">77/F0 77</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">76/F0 76</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Num Lock</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">91</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">47/C7</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">6C/F0 6C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">6C/F0 6C</font></td> 
    <td width="13%">
    <p></p><center><font size="-1">&nbsp;</font><font size="-1" face="Arial">Keypad
    7</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">92</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">4B/CB</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">6B/F0 6B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">6B/F0 6B</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 4</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">93</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">4F/CF</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">69/F0 69</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">69/F0 69</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 1</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">95</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 35/E0 B5 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 4A/E0 F0 4A (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">77/F0 77</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad /</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">96</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">48/C8</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">75/F0 75</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">75/F0 75</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 8</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">97</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">4C/CC</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">73/F0 73</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">73/F0 73</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 5</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">98</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">50/D0</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">72/F0 72</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">72/F0 72</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 2</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">99</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">52/D2</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">70/F0 70</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">70/F0 70</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 0</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">100</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">37/B7</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">7C/F0 7C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">7E/F0 7E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad *</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">101</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">49/C9</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">7D/F0 7D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">7D/F0 7D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 9</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">102</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">4D/CD</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">74/F0 74</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">74/F0 74</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 6</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">103</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">51/D1</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">7A/F0 7A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">7A/F0 7A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 3</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">104</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">53/D3</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">71/F0 71</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">71/F0 71</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad .</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">105</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">4A/CA</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">7B/F0 7B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">84/F0 84</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad -</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">106</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">4E/CE</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">79/F0 79</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">7C/F0 7C</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad +</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">108</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 1C/E0 9C</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 5A/E0 F0 5A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">79/F0 79</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad Enter</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">110</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">01/81</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">76/F0 76</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">08/F0 08</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Esc</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">112</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">3B/BB</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">05/F0 05</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">07/F0 07</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F1</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">113</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">3C/BC</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">06/F0 06</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">0F/F0 0F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F2</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">114</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">3D/BD</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">04/F0 04</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">17/F0 17</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F3</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">115</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">3E/BE</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">0C/F0 0C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">1F/F0 1F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F4</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">116</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">3F/BF</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">03/F0 03</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">27/F0 27</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F5</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">117</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">40/C0</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">0B/F0 0B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">2F/F0 2F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F6</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">118</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">41/C1</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">83/F0 83</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">37/F0 37</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F7</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">119</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">42/C2</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">0A/F0 0A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">3F/F0 3F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F8</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">120</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">43/C3</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">01/F0 01</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">47/F0 47</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F9</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">121</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">44/C4</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">09/F0 09</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">4F/F0 4F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F10</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">122</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">57/D7</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">78/F0 78</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">56/F0 56</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F11</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">123</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">58/D8</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">07/F0 07</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">5E/F0 5E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F12</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">124</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 2A E0 37/E0 B7 E0 AA</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 12 E0 7C/E0 F0 7C E0 F0
    12</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">57/F0 57</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Print Screen</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">125</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">46/C6</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">7E/F0 7E</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">5F/F0 5F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Scroll Lock</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">126</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E1 1D 45/E1 9D C5</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E1 14 77 E1/F0 14 F0 77</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">62/F0 62</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Pause Break</font></center></td>
    <td width="9%">
    &nbsp;</td>


    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">29 or 42*</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">2B/AB</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">5D/F0 5D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">5C/F0 5C or 53/F0 53</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">\</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">|</font></center></td>

----------------------------------------

Notes:

*42 is only applicable to non-U.S. keyboards.
Some key numbers and scan code numbers are missing and reserved by IBM.
In set 1, shift case adds an E0 AA preceding the make code, and an E0 2A following the break code (for applicable keys only).
In set 1, num lock case adds an E0 2A preceding the make code, and an E0 AA following the break code (for applicable keys only).
In set 2, shift case adds an E0 F0 12 preceding the make code, and an E0 12 following the break code (for applicable keys only).
In set 2, num lock case adds an E0 12 preceding the make code, and an E0 F0 12 following the break code (for applicable keys only).
Set 2 is the default set.

----------------------------------------

 1
 29/A9	 0E/F0 0E	 0E/F0 0E	
 `
 ~
 2
 02/82	 16/F0 16	 16/F0 16	
 1
 !
 3
 03/83	 1E/F0 1E	 1E/F0 1E	
 2
 @
 4
 04/84	 26/F0 26	 26/F0 26	
 3
 #
 5
 05/85	 25/F0 25	 25/F0 25	
 4
 $
 6
 06/86	 2E/F0 2E	 2E/F0 2E	
 5
 %
 7
 07/87	 36/F0 36	 36/F0 36	
 6
 ^
 8
 08/88	 3D/F0 3D	 3D/F0 3D	
 7
 &
 9
 09/89	 3E/F0 3E	 3E/F0 3E	
 8
 *
 10
 0A/8A	 46/F0 46	 46/F0 46	
 9
 (
 11
 0B/8B	 45/F0 45	 45/F0 45	
 0
 )
 12
 0C/8C	 4E/F0 4E	 4E/F0 4E	
 -
 _
 13
 0D/8D	 55/F0 55	 55/F0 55	
 =
 +
 15
 0E/8E	 66/F0 66	 66/F0 66	
 Backspace
 16
 0F/8F	 0D/F0 0D	 0D/F0 0D	
 Tab
 
 17
 10/90	 15/F0 15	 15/F0 15	
 q
 Q
 18
 11/91	 1D/F0 1D	 1D/F0 1D	
 w
 W
 19
 12/92	 24/F0 24	 24/F0 24	
 e
 E
 20
 13/93	 2D/F0 2D	 2D/F0 2D	
 r
 R
 21
 14/94	 2C/F0 2C	 2C/F0 2C	
 t
 T
 22
 15/95	 35/F0 35	 35/F0 35	
 y
 Y
 23
 16/96	 3C/F0 3C	 3C/F0 3C	
 u
 U
 24
 17/97	 43/F0 43	 43/F0 43	
 i
 I
 25
 18/98	 44/F0 44	 44/F0 44	
 o
 O
 26
 19/99	 4D/F0 4D	 4D/F0 4D	
 p
 P
 27
 1A/9A	 54/F0 54	 54/F0 54	
 [
 {
 28
 1B/9B	 5B/F0 5B	 5B/F0 5B	
 ]
 }
 30
 3A/BA	 58/F0 58	 58/F0 58	
 Caps Lock
 
 31
 1E/9E	 1C/F0 1C	 1C/F0 1C	
 a
 A
 32
 1F/9F	 1B/F0 1B	 1B/F0 1B	
 s
 S
 33
 20/A0	 23/F0 23	 23/F0 23	
 d
 D
 34
 21/A1	 2B/F0 2B	 2B/F0 2B	
 f
 F
 35
 22/A2	 34/F0 34	 34/F0 34	
 g
 G
 36
 23/A3	 33/F0 33	 33/F0 33	
 h
 H
 37
 24/A4	 3B/F0 3B	 3B/F0 3B	
 j
 J
 38
 25/A5	 42/F0 42	 42/F0 42	
 k
 K
 39
 26/A6	 4B/F0 4B	 4B/F0 4B	
 l
 L
 40
 27/A7	 4C/F0 4C	 4C/F0 4C	
 ;
 :
 41
 28/A8	 52/F0 52	 52/F0 52	
 '
 "
 43
 1C/9C	 5A/F0 5A	 5A/F0 5A	
 Enter
 Enter
 44
 2A/AA	 12/F0 12	 12/F0 12	
 Left Shift
 
 46
 2C/AC	 1A/F0 1A	 1A/F0 1A	
 z
 Z
 47
 2D/AD	 22/F0 22	 22/F0 22	
 x
 X
 48
 2E/AE	 21/F0 21	 21/F0 21	
 c
 C
 49
 2F/AF	 2A/F0 2A	 2A/F0 2A	
 v
 V
 50
 30/B0	 32/F0 32	 32/F0 32	
 b
 B
 51
 31/B1	 31/F0 31	 31/F0 31	
 n
 N
 52
 32/B2	 3A/F0 3A	 3A/F0 3A	
 m
 M
 53
 33/B3	 41/F0 41	 41/F0 41	
 ,
 <
 54
 34/B4	 49/F0 49	 49/F0 49	
 .
 >
 55
 35/B5	 4A/F0 4A	 4A/F0 4A	
 /
 ?
 57
 36/B6	 59/F0 59	 59/F0 59	
 Right Shift
 
 58
 1D/9D	 14/F0 14	 11/F0 11	
 Left Ctrl
 
 60
 38/B8	 11/F0 11	 19/F0 19	
 Left Alt
 
 61
 39/B9	 29/F0 29	 29/F0 29	
 Spacebar
 
 62
 E0 38/E0 B8	 E0 11/E0 F0 11	 39/F0 39	
 Right Alt
 
 64
 E0 1D/E0 9D	 E0 14/E0 F0 14	 58/F0 58	
 Right Ctrl
 
 75
 E0 52/E0 D2 (base)	 E0 70/E0 F0 70 (base)	 67/F0 67	
 Insert
 
 76
 E0 4B/E0 CB (base)	 E0 71/E0 F0 71 (base)	 64/F0 64	
 Delete
 
 79
 E0 4B/E0 CB (base)	 E0 6B/E0 F0 6B (base)	 61/F0 61	
 Left Arrow
 
 80
 E0 47/E0 C7 (base)	 E0 6C/E0 F0 6C (base)	 6E/F0 6E	
 Home
 
 81
 E0 4F/E0 CF (base)	 E0 69/E0 F0 69 (base)	 65/F0 65	
 End
 
 83
 E0 48/E0 C8 (base)	 E0 75/E0 F0 75 (base)	 63/F0 63	
 Up Arrow
 
 84
 E0 50/E0 D0 (base)	 E0 72/E0 F0 72 (base)	 60/F0 60	
 Down Arrow
 
 85
 E0 49/E0 C9 (base)	 E0 7D/E0 F0 7D (base)	 6F/F0 6F	
 Page Up
 
 86
 E0 51/E0 D1 (base)	 E0 7A/E0 F0 7A (base)	 6D/F0 6D	
 Page Down
 
 89
 E0 4D/E0 CD (base)	 E0 74/E0 F0 74 (base)	 6A/F0 6A	
 Right Arrow
 
 90
 45/C5	 77/F0 77	 76/F0 76	
 Num Lock
 
 91
 47/C7	 6C/F0 6C	 6C/F0 6C	
 Keypad 7
 
 92
 4B/CB	 6B/F0 6B	 6B/F0 6B	
 Keypad 4
 
 93
 4F/CF	 69/F0 69	 69/F0 69	
 Keypad 1
 
 95
 E0 35/E0 B5 (base)	 E0 4A/E0 F0 4A (base)	 77/F0 77	
 Keypad /
 
 96
 48/C8	 75/F0 75	 75/F0 75	
 Keypad 8
 
 97
 4C/CC	 73/F0 73	 73/F0 73	
 Keypad 5
 
 98
 50/D0	 72/F0 72	 72/F0 72	
 Keypad 2
 
 99
 52/D2	 70/F0 70	 70/F0 70	
 Keypad 0
 
 100
 37/B7	 7C/F0 7C	 7E/F0 7E	
 Keypad *
 
 101
 49/C9	 7D/F0 7D	 7D/F0 7D	
 Keypad 9
 
 102
 4D/CD	 74/F0 74	 74/F0 74	
 Keypad 6
 
 103
 51/D1	 7A/F0 7A	 7A/F0 7A	
 Keypad 3
 
 104
 53/D3	 71/F0 71	 71/F0 71	
 Keypad .
 
 105
 4A/CA	 7B/F0 7B	 84/F0 84	
 Keypad -
 
 106
 4E/CE	 79/F0 79	 7C/F0 7C	
 Keypad +
 
 108
 E0 1C/E0 9C	 E0 5A/E0 F0 5A	 79/F0 79	
 Keypad Enter
 
 110
 01/81	 76/F0 76	 08/F0 08	
 Esc
 
 112
 3B/BB	 05/F0 05	 07/F0 07	
 F1
 
 113
 3C/BC	 06/F0 06	 0F/F0 0F	
 F2
 
 114
 3D/BD	 04/F0 04	 17/F0 17	
 F3
 
 115
 3E/BE	 0C/F0 0C	 1F/F0 1F	
 F4
 
 116
 3F/BF	 03/F0 03	 27/F0 27	
 F5
 
 117
 40/C0	 0B/F0 0B	 2F/F0 2F	
 F6
 
 118
 41/C1	 83/F0 83	 37/F0 37	
 F7
 
 119
 42/C2	 0A/F0 0A	 3F/F0 3F	
 F8
 
 120
 43/C3	 01/F0 01	 47/F0 47	
 F9
 
 121
 44/C4	 09/F0 09	 4F/F0 4F	
 F10
 
 122
 57/D7	 78/F0 78	 56/F0 56	
 F11
 
 123
 58/D8	 07/F0 07	 5E/F0 5E	
 F12
 
 124
 E0 2A E0 37/E0 B7 E0 AA	 E0 12 E0 7C/E0 F0 7C E0 F0 12	 57/F0 57	
 Print Screen
 
 125
 46/C6	 7E/F0 7E	 5F/F0 5F	
 Scroll Lock
 
 126
 E1 1D 45/E1 9D C5	 E1 14 77 E1/F0 14 F0 77	 62/F0 62	
 Pause Break
 
 29 or 42*
 2B/AB	 5D/F0 5D	 5C/F0 5C or 53/F0 53	
 \
 |

----------------------------------------

<tbody><tr>
    <td width="8%">
    <p></p><center>&nbsp;<font color="#000000" size="-1" face="Arial">IBM
    Key No.</font></center></td>
    <td width="25%">
    <p></p><center><font color="#000000" size="-1" face="Arial">Set 1
    Make/Break</font></center></td>
    <td width="31%">
    <p></p><center><font color="#000000" size="-1" face="Arial">Set 2
    Make/Break</font></center></td>
    <td width="14%">
    <p></p><center><font color="#000000" size="-1" face="Arial">Set 3
    Make/Break</font></center></td>
    <td width="13%">
    <p></p><center><font color="#000000" size="-1" face="Arial">Base<br>
    Case</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font color="#000000" size="-1" face="Arial">Upper
    Case</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">1</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">29/A9</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">0E/F0 0E</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">0E/F0 0E</font></td> 
    <td width="13%">
    <p></p><center><font size="-1" face="Arial">&nbsp;`</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">~</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">2</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">02/82</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">16/F0 16</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">16/F0 16</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">1</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">!</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">3</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">03/83</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">1E/F0 1E</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">1E/F0 1E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">2</font></center></td>
    <td width="9%">
    <p></p><center><font size="-1">&nbsp;</font><font size="-1" face="Arial">@</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">4</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">04/84</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">26/F0 26</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">26/F0 26</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">3</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">#</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">5</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">05/85</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">25/F0 25</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">25/F0 25</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">4</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">$</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">6</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">06/86</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">2E/F0 2E</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">2E/F0 2E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">5</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">%</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">7</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">07/87</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">36/F0 36</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">36/F0 36</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">6</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">^</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">8</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">08/88</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">3D/F0 3D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">3D/F0 3D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">7</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">&amp;</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">9</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">09/89</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">3E/F0 3E</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">3E/F0 3E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">8</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">*</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">10</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">0A/8A</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">46/F0 46</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">46/F0 46</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">9</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">(</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">11</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">0B/8B</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">45/F0 45</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">45/F0 45</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">0</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">)</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">12</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">0C/8C</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">4E/F0 4E</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">4E/F0 4E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">-</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">_</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">13</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">0D/8D</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">55/F0 55</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">55/F0 55</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">=</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">+</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">15</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">0E/8E</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">66/F0 66</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">66/F0 66</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Backspace</font></center></td>
    <td width="9%"></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">16</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">0F/8F</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">0D/F0 0D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">0D/F0 0D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Tab</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">17</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">10/90</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">15/F0 15</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">15/F0 15</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">q</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Q</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">18</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">11/91</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">1D/F0 1D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">1D/F0 1D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">w</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">W</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">19</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">12/92</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">24/F0 24</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">24/F0 24</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">e</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">E</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">20</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">13/93</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">2D/F0 2D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">2D/F0 2D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">r</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">R</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">21</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">14/94</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">2C/F0 2C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">2C/F0 2C</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">t</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">T</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">22</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">15/95</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">35/F0 35</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">35/F0 35</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">y</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Y</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">23</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">16/96</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">3C/F0 3C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">3C/F0 3C</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">u</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">U</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">24</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">17/97</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">43/F0 43</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">43/F0 43</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">i</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">I</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">25</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">18/98</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">44/F0 44</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">44/F0 44</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">o</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">O</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">26</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">19/99</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">4D/F0 4D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">4D/F0 4D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">p</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">P</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">27</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">1A/9A</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">54/F0 54</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">54/F0 54</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">[</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">{</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">28</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">1B/9B</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">5B/F0 5B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">5B/F0 5B</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">]</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">}</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">30</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">3A/BA</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">58/F0 58</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">58/F0 58</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Caps Lock</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">31</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">1E/9E</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">1C/F0 1C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">1C/F0 1C</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">a</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">A</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">32</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">1F/9F</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">1B/F0 1B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">1B/F0 1B</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">s</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">S</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">33</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">20/A0</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">23/F0 23</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">23/F0 23</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">d</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">D</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">34</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">21/A1</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">2B/F0 2B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">2B/F0 2B</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">f</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">35</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">22/A2</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">34/F0 34</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">34/F0 34</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">g</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">G</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">36</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">23/A3</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">33/F0 33</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">33/F0 33</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">h</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">H</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">37</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">24/A4</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">3B/F0 3B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">3B/F0 3B</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">j</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">J</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">38</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">25/A5</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">42/F0 42</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">42/F0 42</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">k</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">K</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">39</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">26/A6</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">4B/F0 4B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">4B/F0 4B</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">l</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">L</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">40</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">27/A7</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">4C/F0 4C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">4C/F0 4C</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font face="Arial">;</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">:</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">41</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">28/A8</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">52/F0 52</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">52/F0 52</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">'</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">"</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">43</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">1C/9C</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">5A/F0 5A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">5A/F0 5A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Enter</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Enter</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">44</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">2A/AA</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">12/F0 12</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">12/F0 12</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Left Shift</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">46</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">2C/AC</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">1A/F0 1A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">1A/F0 1A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">z</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Z</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">47</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">2D/AD</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">22/F0 22</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">22/F0 22</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">x</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">X</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">48</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">2E/AE</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">21/F0 21</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">21/F0 21</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">c</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">C</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">49</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">2F/AF</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">2A/F0 2A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">2A/F0 2A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">v</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">V</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">50</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">30/B0</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">32/F0 32</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">32/F0 32</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">b</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">B</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">51</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">31/B1</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">31/F0 31</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">31/F0 31</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">n</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">N</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">52</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">32/B2</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">3A/F0 3A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">3A/F0 3A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">m</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">M</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">53</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">33/B3</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">41/F0 41</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">41/F0 41</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">,</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">&lt;</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">54</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">34/B4</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">49/F0 49</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">49/F0 49</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">.</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">&gt;</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">55</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">35/B5</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">4A/F0 4A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">4A/F0 4A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">/</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">?</font></center></td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">57</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">36/B6</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">59/F0 59</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">59/F0 59</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Right Shift</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">58</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">1D/9D</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">14/F0 14</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">11/F0 11</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Left Ctrl</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">60</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">38/B8</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">11/F0 11</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">19/F0 19</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Left Alt</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">61</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">39/B9</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">29/F0 29</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">29/F0 29</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Spacebar</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">62</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 38/E0 B8</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 11/E0 F0 11</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">39/F0 39</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Right Alt</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">64</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 1D/E0 9D</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 14/E0 F0 14</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">58/F0 58</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Right Ctrl</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">75</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 52/E0 D2 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 70/E0 F0 70 (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">67/F0 67</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Insert</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">76</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 4B/E0 CB (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 71/E0 F0 71 (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">64/F0 64</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Delete</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">79</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 4B/E0 CB (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 6B/E0 F0 6B (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">61/F0 61</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Left Arrow</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">80</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 47/E0 C7 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 6C/E0 F0 6C (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">6E/F0 6E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Home</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">81</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 4F/E0 CF (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 69/E0 F0 69 (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">65/F0 65</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">End</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">83</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 48/E0 C8 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 75/E0 F0 75 (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">63/F0 63</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Up Arrow</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">84</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 50/E0 D0 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 72/E0 F0 72 (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">60/F0 60</font></td> 
    <td width="13%">
    <p></p><center><font size="-1">&nbsp;</font><font size="-1" face="Arial">Down
    Arrow</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">85</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 49/E0 C9 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 7D/E0 F0 7D (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">6F/F0 6F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Page Up</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">86</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 51/E0 D1 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 7A/E0 F0 7A (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">6D/F0 6D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Page Down</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">89</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 4D/E0 CD (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 74/E0 F0 74 (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">6A/F0 6A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Right Arrow</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">90</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">45/C5</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">77/F0 77</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">76/F0 76</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Num Lock</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">91</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">47/C7</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">6C/F0 6C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">6C/F0 6C</font></td> 
    <td width="13%">
    <p></p><center><font size="-1">&nbsp;</font><font size="-1" face="Arial">Keypad
    7</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">92</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">4B/CB</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">6B/F0 6B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">6B/F0 6B</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 4</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">93</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">4F/CF</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">69/F0 69</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">69/F0 69</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 1</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">95</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 35/E0 B5 (base)</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 4A/E0 F0 4A (base)</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">77/F0 77</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad /</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">96</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">48/C8</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">75/F0 75</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">75/F0 75</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 8</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">97</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">4C/CC</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">73/F0 73</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">73/F0 73</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 5</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">98</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">50/D0</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">72/F0 72</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">72/F0 72</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 2</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">99</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">52/D2</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">70/F0 70</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">70/F0 70</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 0</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">100</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">37/B7</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">7C/F0 7C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">7E/F0 7E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad *</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">101</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">49/C9</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">7D/F0 7D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">7D/F0 7D</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 9</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">102</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">4D/CD</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">74/F0 74</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">74/F0 74</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 6</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">103</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">51/D1</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">7A/F0 7A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">7A/F0 7A</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad 3</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">104</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">53/D3</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">71/F0 71</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">71/F0 71</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad .</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">105</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">4A/CA</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">7B/F0 7B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">84/F0 84</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad -</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">106</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">4E/CE</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">79/F0 79</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">7C/F0 7C</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad +</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">108</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 1C/E0 9C</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 5A/E0 F0 5A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">79/F0 79</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Keypad Enter</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">110</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">01/81</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">76/F0 76</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">08/F0 08</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Esc</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">112</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">3B/BB</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">05/F0 05</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">07/F0 07</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F1</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">113</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">3C/BC</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">06/F0 06</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">0F/F0 0F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F2</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">114</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">3D/BD</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">04/F0 04</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">17/F0 17</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F3</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">115</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">3E/BE</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">0C/F0 0C</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">1F/F0 1F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F4</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">116</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">3F/BF</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">03/F0 03</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">27/F0 27</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F5</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">117</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">40/C0</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">0B/F0 0B</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">2F/F0 2F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F6</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">118</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">41/C1</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">83/F0 83</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">37/F0 37</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F7</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">119</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">42/C2</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">0A/F0 0A</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">3F/F0 3F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F8</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">120</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">43/C3</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">01/F0 01</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">47/F0 47</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F9</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">121</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">44/C4</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">09/F0 09</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">4F/F0 4F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F10</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">122</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">57/D7</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">78/F0 78</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">56/F0 56</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F11</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">123</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">58/D8</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">07/F0 07</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">5E/F0 5E</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">F12</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">124</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E0 2A E0 37/E0 B7 E0 AA</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E0 12 E0 7C/E0 F0 7C E0 F0
    12</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">57/F0 57</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Print Screen</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">125</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">46/C6</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">7E/F0 7E</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">5F/F0 5F</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Scroll Lock</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">126</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">E1 1D 45/E1 9D C5</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">E1 14 77 E1/F0 14 F0 77</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">62/F0 62</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">Pause Break</font></center></td>
    <td width="9%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="8%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">29 or 42*</font></center></td>
    <td width="25%">
    &nbsp;<font size="-1" face="Arial">2B/AB</font></td> 
    <td width="31%">
    &nbsp;<font size="-1" face="Arial">5D/F0 5D</font></td> 
    <td width="14%">
    &nbsp;<font size="-1" face="Arial">5C/F0 5C or 53/F0 53</font></td> 
    <td width="13%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">\</font></center></td>
    <td width="9%">
    <p></p><center>&nbsp;<font size="-1" face="Arial">|</font></center></td>
  </tr>
</tbody>

----------------------------------------

|===============|======================|======================|======================|==========|===========|
|IBM Key Number | Set 1 (Make / Break) | Set 2 (Make / Break) | Set 3 (Make / Break) | BaseCase | UpperCase |
|===============|======================|======================|======================|==========|===========|

 1
 29/A9
 0E/F0 0E
 0E/F0 0E
 `
 ~

 2
 02/82
 16/F0 16
 16/F0 16
 1
 !

 3
 03/83
 1E/F0 1E
 1E/F0 1E
 2
 @

 4
 04/84
 26/F0 26
 26/F0 26
 3
 #

 5
 05/85
 25/F0 25
 25/F0 25
 4
 $

 6
 06/86
 2E/F0 2E
 2E/F0 2E
 5
 %

 7
 07/87
 36/F0 36
 36/F0 36
 6
 \^

 8
 08/88
 3D/F0 3D
 3D/F0 3D
 7
 &

 9
 09/89
 3E/F0 3E
 3E/F0 3E
 8
 *

 10
 0A/8A
 46/F0 46
 46/F0 46
 9
 (

 11
 0B/8B
 45/F0 45
 45/F0 45
 0
 )

 12
 0C/8C
 4E/F0 4E
 4E/F0 4E
 -
 \_

 13
 0D/8D
 55/F0 55
 55/F0 55
 =
 +

 15
 0E/8E
 66/F0 66
 66/F0 66
 Backspace
 

 16
 0F/8F
 0D/F0 0D
 0D/F0 0D
 Tab
 

 17
 10/90
 15/F0 15
 15/F0 15
 q
 Q

 18
 11/91
 1D/F0 1D
 1D/F0 1D
 w
 W

 19
 12/92
 24/F0 24
 24/F0 24
 e
 E

 20
 13/93
 2D/F0 2D
 2D/F0 2D
 r
 R

 21
 14/94
 2C/F0 2C
 2C/F0 2C
 t
 T

 22
 15/95
 35/F0 35
 35/F0 35
 y
 Y

 23
 16/96
 3C/F0 3C
 3C/F0 3C
 u
 U

 24
 17/97
 43/F0 43
 43/F0 43
 i
 I

 25
 18/98
 44/F0 44
 44/F0 44
 o
 O

 26
 19/99
 4D/F0 4D
 4D/F0 4D
 p
 P

 27
 1A/9A
 54/F0 54
 54/F0 54
 [
 {

 28
 1B/9B
 5B/F0 5B
 5B/F0 5B
 ]
 }

 30
 3A/BA
 58/F0 58
 58/F0 58
 Caps Lock
 

 31
 1E/9E
 1C/F0 1C
 1C/F0 1C
 a
 A

 32
 1F/9F
 1B/F0 1B
 1B/F0 1B
 s
 S

 33
 20/A0
 23/F0 23
 23/F0 23
 d
 D

 34
 21/A1
 2B/F0 2B
 2B/F0 2B
 f
 F

 35
 22/A2
 34/F0 34
 34/F0 34
 g
 G

 36
 23/A3
 33/F0 33
 33/F0 33
 h
 H

 37
 24/A4
 3B/F0 3B
 3B/F0 3B
 j
 J

 38
 25/A5
 42/F0 42
 42/F0 42
 k
 K

 39
 26/A6
 4B/F0 4B
 4B/F0 4B
 l
 L

 40
 27/A7
 4C/F0 4C
 4C/F0 4C
 ;
 :

 41
 28/A8
 52/F0 52
 52/F0 52
 '
 "

 43
 1C/9C
 5A/F0 5A
 5A/F0 5A
 Enter
 Enter

 44
 2A/AA
 12/F0 12
 12/F0 12
 Left Shift
 

 46
 2C/AC
 1A/F0 1A
 1A/F0 1A
 z
 Z

 47
 2D/AD
 22/F0 22
 22/F0 22
 x
 X

 48
 2E/AE
 21/F0 21
 21/F0 21
 c
 C

 49
 2F/AF
 2A/F0 2A
 2A/F0 2A
 v
 V

 50
 30/B0
 32/F0 32
 32/F0 32
 b
 B

 51
 31/B1
 31/F0 31
 31/F0 31
 n
 N

 52
 32/B2
 3A/F0 3A
 3A/F0 3A
 m
 M

 53
 33/B3
 41/F0 41
 41/F0 41
 ,
 <

 54
 34/B4
 49/F0 49
 49/F0 49
 .
 >

 55
 35/B5
 4A/F0 4A
 4A/F0 4A
 /
 ?

 57
 36/B6
 59/F0 59
 59/F0 59
 Right Shift
 

 58
 1D/9D
 14/F0 14
 11/F0 11
 Left Ctrl
 

 60
 38/B8
 11/F0 11
 19/F0 19
 Left Alt
 

 61
 39/B9
 29/F0 29
 29/F0 29
 Spacebar
 

 62
 E0 38/E0 B8
 E0 11/E0 F0 11
 39/F0 39
 Right Alt
 

 64
 E0 1D/E0 9D
 E0 14/E0 F0 14
 58/F0 58
 Right Ctrl
 

 75
 E0 52/E0 D2 (base)
 E0 70/E0 F0 70 (base)
 67/F0 67
 Insert
 

 76
 E0 4B/E0 CB (base)
 E0 71/E0 F0 71 (base)
 64/F0 64
 Delete
 

 79
 E0 4B/E0 CB (base)
 E0 6B/E0 F0 6B (base)
 61/F0 61
 Left Arrow
 

 80
 E0 47/E0 C7 (base)
 E0 6C/E0 F0 6C (base)
 6E/F0 6E
 Home
 

 81
 E0 4F/E0 CF (base)
 E0 69/E0 F0 69 (base)
 65/F0 65
 End
 

 83
 E0 48/E0 C8 (base)
 E0 75/E0 F0 75 (base)
 63/F0 63
 Up Arrow
 

 84
 E0 50/E0 D0 (base)
 E0 72/E0 F0 72 (base)
 60/F0 60
 Down Arrow
 

 85
 E0 49/E0 C9 (base)
 E0 7D/E0 F0 7D (base)
 6F/F0 6F
 Page Up
 

 86
 E0 51/E0 D1 (base)
 E0 7A/E0 F0 7A (base)
 6D/F0 6D
 Page Down
 

 89
 E0 4D/E0 CD (base)
 E0 74/E0 F0 74 (base)
 6A/F0 6A
 Right Arrow
 

 90
 45/C5
 77/F0 77
 76/F0 76
 Num Lock
 

 91
 47/C7
 6C/F0 6C
 6C/F0 6C
 Keypad 7
 

 92
 4B/CB
 6B/F0 6B
 6B/F0 6B
 Keypad 4
 

 93
 4F/CF
 69/F0 69
 69/F0 69
 Keypad 1
 

 95
 E0 35/E0 B5 (base)
 E0 4A/E0 F0 4A (base)
 77/F0 77
 Keypad /
 

 96
 48/C8
 75/F0 75
 75/F0 75
 Keypad 8
 

 97
 4C/CC
 73/F0 73
 73/F0 73
 Keypad 5
 

 98
 50/D0
 72/F0 72
 72/F0 72
 Keypad 2
 

 99
 52/D2
 70/F0 70
 70/F0 70
 Keypad 0
 

 100
 37/B7
 7C/F0 7C
 7E/F0 7E
 Keypad *
 

 101
 49/C9
 7D/F0 7D
 7D/F0 7D
 Keypad 9
 

 102
 4D/CD
 74/F0 74
 74/F0 74
 Keypad 6
 

 103
 51/D1
 7A/F0 7A
 7A/F0 7A
 Keypad 3
 

 104
 53/D3
 71/F0 71
 71/F0 71
 Keypad .
 

 105
 4A/CA
 7B/F0 7B
 84/F0 84
 Keypad -
 

 106
 4E/CE
 79/F0 79
 7C/F0 7C
 Keypad +
 

 108
 E0 1C/E0 9C
 E0 5A/E0 F0 5A
 79/F0 79
 Keypad Enter
 

 110
 01/81
 76/F0 76
 08/F0 08
 Esc
 

 112
 3B/BB
 05/F0 05
 07/F0 07
 F1
 

 113
 3C/BC
 06/F0 06
 0F/F0 0F
 F2
 

 114
 3D/BD
 04/F0 04
 17/F0 17
 F3
 

 115
 3E/BE
 0C/F0 0C
 1F/F0 1F
 F4
 

 116
 3F/BF
 03/F0 03
 27/F0 27
 F5
 

 117
 40/C0
 0B/F0 0B
 2F/F0 2F
 F6
 

 118
 41/C1
 83/F0 83
 37/F0 37
 F7
 

 119
 42/C2
 0A/F0 0A
 3F/F0 3F
 F8
 

 120
 43/C3
 01/F0 01
 47/F0 47
 F9
 

 121
 44/C4
 09/F0 09
 4F/F0 4F
 F10
 

 122
 57/D7
 78/F0 78
 56/F0 56
 F11
 

 123
 58/D8
 07/F0 07
 5E/F0 5E
 F12
 

 124
 E0 2A E0 37/E0 B7 E0 AA
 E0 12 E0 7C/E0 F0 7C E0 F0 12
 57/F0 57
 Print Screen
 

 125
 46/C6
 7E/F0 7E
 5F/F0 5F
 Scroll Lock
 

 126
 E1 1D 45/E1 9D C5
 E1 14 77 E1/F0 14 F0 77
 62/F0 62
 Pause Break
 

 29 or 42*
 2B/AB
 5D/F0 5D
 5C/F0 5C or 53/F0 53
 \
 |




----------------------------------------

==================================================