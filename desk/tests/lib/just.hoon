/+  *test
|%
::
++  run-pair
  |=  pair=^
  ^-  tang
  %+  expect-eq
    !>  -.pair
  !>  +.pair
::
++  cases-zero
  :~  :-  0     (sub 0 0)
      :-  1     (sub 1 0)
      :-  0     (sub 20 20)
  ==
::
++  fails-zero
  :~  |.((sub 0 1))
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
  ;:  weld
    (murn cases-zero run-pair)
    (murn fails-zero expect-fail)
  ==
::
++  test-one
  ;;  tang
  ;:  weld
    (murn cases-one run-pair)
    (murn fails-one expect-fail)
  ==
--

