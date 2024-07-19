  ::  /lib/just
::::
::
/-  *just
/+  shoe,
    sole
|%
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
  =/  gat  .^(tube:clay %cc (welp (scag 3 `(list term)`path) /[of]/txt))
  =/  raw  .^((~(gut by mari) of noun) %cx path)
  !<  wain  (gat !>(raw))
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
  :~  :+  %shoe  ~
      ^-  shoe-effect:shoe
      :-  %sole
      ^-  sole-effect:sole  :-  %klr
      ^-  styx
      %-  zing
      %+  turn
        lines
      |=  =cord
      ^-  styx
      =/  rng  ~(. og eny)
      =^  huer  rng  (rads:rng 256)
      =^  hueg  rng  (rads:rng 256)
      =^  hueb  rng  (rads:rng 256)
      `styx`~[[[`%br ~ `[r=`@ux`huer g=`@ux`hueg b=`@ux`hueb]] cord ~]]
  ==
::  Convert a wain to Dill output with highlighted line.
::
++  render-highlight
  |=  [dat=?@(ro=@ud [ro=@ud fg=@ux bg=@ux]) lines=wain]
  ^-  (list card:agent:shoe)
  :~  :+  %shoe  ~
      ^-  shoe-effect:shoe
      :-  %sole
      ^-  sole-effect:sole  :-  %klr
      ^-  styx
      =|  idx=@
      =|  fx=styx
      |-  ^-  styx
      ?:  =((lent lines) idx)  fx
      =/  huer  ?:(=(ro.dat idx) (cut 3 [2 1] fg.dat) (cut 3 [2 1] bg.dat))
      =/  hueg  ?:(=(ro.dat idx) (cut 3 [1 1] fg.dat) (cut 3 [1 1] bg.dat))
      =/  hueb  ?:(=(ro.dat idx) (cut 3 [0 1] fg.dat) (cut 3 [0 1] bg.dat))
      %=  $
        idx  +(idx)
        fx  `styx`(weld fx `styx`~[[[`%br ~ `[r=huer g=hueg b=hueb]] command ~]])
      ==
  ==
--
