  ::  /sur/just
::::
::
|%
+$  state-zero
  $:  %zero
      ses=@ta     :: Dill session
      fyl=path    :: Path to current file
      con=wain    :: Current file contents
      cur=@ud     :: Current cursor position as line number
  ==
::
+$  action
  $%  [%open =path]
  ==
+$  update
  $%  [%risen values=(list @)]
  ==
--
