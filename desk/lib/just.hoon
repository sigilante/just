  ::  /lib/just
::::
::
/-  *just
/+  shoe,
    sole
|_  =bowl:gall
::  We want to load files as individual lines rather
::  than as a single string.  This will facilitate
::  printing visible ranges.
::
++  load-file
  |=  =path
  ^-  wain  :: (list cord)
  ?.  .^(? %cu path)  ~
  ::  Source mark.
  =/  of  `term`(head (flop path))
  ::  Short-circuit if a %txt file.
  ?:  =(%txt of)  .^(wain %cx /[path])
  ::  Build mark conversion core to %txt.
  ?.  (~(has by mari) of)  ~|(%mark-not-supported !!)
  ::  Get file and envase it.  
  =/  raw=vase
    ?+  of  !!
      %bill    !>(.^((list dude:gall) %cx path))
      %hoon    !>(.^(cord %cx path))
      %html    !>(.^(cord %cx path))
      %json    !>(.^(json %cx path))
      %md      !>(.^(wain %cx path))
      %mime    !>(.^(mime %cx path))
      %svg     !>(.^(cord %cx path))
      %tang    !>(.^((list tank) %cx path))
      %tape    !>(.^(tape %cx path))
      %udon    !>(.^(cord %cx path))
      %xhtml   !>(.^(cord %cx path))
      %xml     !>(.^(cord %cx path))
    ==
  ::  Get target devase.
  =/  gat  .^(tube:clay %cc `^path`(welp (scag 3 `(list term)`path) /[of]/txt))
  !<  wain  (gat raw)
::  viaggiamo sui mari
::
++  mari
  ^~
  ^-  (map term gate)
  %-  malt
  ^-  (list (pair term gate))
  :~  :-  %bill    (list dude:gall)
      :-  %hoon    cord
      :-  %html    cord
      :-  %json    json
      :-  %md      wain
      :-  %mime    mime
      :-  %svg     cord
      :-  %tang    (list tank)
      :-  %tape    tape
      :-  %udon    cord
      :-  %xhtml   cord
      :-  %xml     cord
  ==
::  Yield a subrange from a wain.
::
::  Usage:
::    > (line-range [3 5] ~['a' 'b' 'c' 'd' 'e' 'f' 'g'])
::    <|d e f|>
::    > (line-range [3 10] ~['a' 'b' 'c' 'd' 'e' 'f' 'g'])
::    <|d e f g|>
::  Source:
++  line-range
  |=  [range=(pair atom atom) lines=wain]
  ^-  wain  :: (list cord)
  ?>  (gte q.range p.range)
  =?  q.range  (lth (lent lines) +(q.range))  (lent lines)
  (slag p.range (scag +(q.range) lines))
::  Convert a wain to Dill output.
::
++  render-wain
  |=  lines=wain
  ^-  (list card:agent:shoe)
  (turn lines (curr cardigan ~))
::  Convert a wain to Dill output with highlighted line.
::
++  render-highlight
  |=  [row=@ud lines=wain]
  ^-  (list card:agent:shoe)
  =/  res  (turn lines (curr cardigan ~))
  %^    snap
      res
    row
  (cardigan (snag row lines) `0xe5.960f)
::  Produce a line, perhaps with color.
::
++  cardigan
  |=  [=cord col=(unit @ux)]
  :+  %shoe  ~
  ^-  shoe-effect:shoe
  :-  %sole
  ^-  sole-effect:sole  :-  %klr
  ^-  styx
  =/  rng  ~(. og eny.bowl)
  ?~  col
    `styx`~[[[`%br ~ `[r=0xff g=0xff b=0xff]] cord ~]]
  =/  fg  (need col)
  =/  huer  `@ux`(cut 3 [2 1] fg)
  =/  hueg  `@ux`(cut 3 [1 1] fg)
  =/  hueb  `@ux`(cut 3 [0 1] fg)
  `styx`~[[[`%br ~ `[r=huer g=hueg b=hueb]] cord ~]]
--
