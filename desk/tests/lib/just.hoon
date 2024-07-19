/+  just,
    shoe,
    sole,
    *test
|%
::
++  run-pair
  |=  pair=^
  ^-  (unit tang)
  :-  ~
  %+  expect-eq
    !>  -.pair
  !>  +.pair
::
++  run-fail
  |=  =(trap)
  ^-  (unit tang)
  :-  ~
  (expect-fail trap)
::
++  cases-render-wain
  :~  :-  ^-  (list card:agent:shoe)
          ~[[%shoe ~ [%sole [%klr ~]]]]
          (render-wain ~)
      :-  ^-  (list card:agent:shoe)
          ~[[%shoe ~ [%sole [%klr ~[[[[~ %br] [~ [~ [0xbb 0x68 0x48]]]] ~['a']] [[[~ %br]]]]]]]]
          (render-wain:just ~['a'])
      :-  ^-  (list card:agent:shoe)
          ~[[%shoe ~ [%sole [%klr ~[[[[~ %br] [~ [~ [0xbb 0x68 0x48]]]] ~['a']] [[[~ %br] [~ [~ [0xbb 0x68 0x48]]]] ~['b']] [[[~ %br] [~ [~ [0xbb 0x68 0x48]]]] ~['c']]]]]]]
          (render-wain:just ~['a' 'b' 'c'])
  ==
::
++  cases-one
  :~  :-  0     (sub 1 1)
      :-  1     (sub 2 1)
      :-  19    (sub 20 1)
  ==
::
++  fails-one
  :~  |.((sub 1 2))
      |.((sub 19 20))
  ==
::
++  test-zero
  ;;  tang
  %-  zing
  ;:  weld
    (murn cases-zero run-pair)
    (murn fails-zero run-fail)
  ==
::
++  test-one
  ;;  tang
  %-  zing
  ;:  weld
    (murn cases-one run-pair)
    (murn fails-one run-fail)
  ==
--
