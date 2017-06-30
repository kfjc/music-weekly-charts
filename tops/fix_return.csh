#!/bin/csh -f

set lister = `ls -d *html`
foreach one ($lister)
  sed "s/.misc.kfjc//g" $one >> tester.html
  mv $one $one.old
  mv tester.html $one
end
