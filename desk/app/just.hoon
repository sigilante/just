  ::  /app/just
::::  Version ~2024.7.18 by ~lagrev-nocfep
::    Demo app for /lib/just.
/-  js=just
/+  default-agent,
    dbug,
    just,
    verb
|%
+$  versioned-state
  $%  state-zero:js
  ==
+$  card  card:agent:gall
--
=|  state-zero:js
=*  state  -
%-  agent:dbug
%+  verb  |
^-  agent:gall
|_  =bowl:gall
+*  this     .
    default  ~(. (default-agent this %|) bowl)
    aux      ~(. just bowl)
++  on-init   on-init:default
++  on-save   !>(state)
++  on-load
  |=  old=vase
  ^-  [(list card) _this]
  `this(state !<(state-zero:js old))
++  on-poke
  |=  [=mark =vase]
  ^-  [(list card) _this]
  ?+    mark  (on-poke:default mark vase)
      %dill-poke
    =+  !<([ses=@ta belt=dill-belt:dill] vase)
    =?  cur  ?=(?(%' ' [%bac ~] [%aro *]) belt)
      ?-    belt
        ::  Move back.
          ?([%bac ~] [%aro %u] [%aro %l])
        (dec (max 1 cur))
        ::  Move forward.
          ?(%' ' [%aro %d] [%aro %r])
        (min +(cur) (dec (lent con)))
      ==
    ~&  >>  ["{<cur>}/{<(dec (max 1 (lent con)))>}"]
    [~[(render:aux ses cur 33 con)] this]
    ::
      %just-action
    =+  !<(act=action:js vase)
    ^-  [(list card) _this]
    ?+    `@tas`-.act  (on-poke:default mark vase)
        %open
      :-  ~
      %=  this
        fyl  path.act
        cur  0
        con  (load-file:aux path.act)
      ==
    ==
  ==
++  on-peek   on-peek:default
++  on-arvo   on-arvo:default
++  on-watch  on-watch:default
++  on-leave  on-leave:default
++  on-agent  on-agent:default
++  on-fail   on-fail:default
--

