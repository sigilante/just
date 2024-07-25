# `/lib/just`

Not more, not less, just right:  native text file display.

![H. J. Ford, The Story of the Three Little Bears](https://www.colorado.edu/projects/fairy-tales/sites/default/files/styles/medium/public/article-image/greenfairybook00lang_0_0259.jpg?itok=76T2p4-T)

A library to facilitate displaying text files on Urbit directly using Dill.

```
> :just|open /===/lib/tiny/hoon

> :just &just-action [%open /===/desk/bill]

> :just &just-action [%open /=just=/dat/odyssey/txt]

> :just &just-action [%open /=just=/dat/rime/txt]
```

Since this uses terminal sessions, you can only use it correctly in `%webterm` currently.  Open your `%webterm` and add a new session using the `+` tab at the top.  Name the new session `just!anything`.

The arrow keys allow you to navigate.

Formally, `q` or `x` will close the session, but `%webterm` does not currently dynamically update the screen with the closed session.

---

Design questions:

- Can you retrieve the current default text color?

