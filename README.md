# music-weekly-charts
Top o' the plops - weekly top hit statistics from the music department

Here lies the archive of weekly hits dating back to 1997. It is published on the public website, but with the 'archival' flavor of this 40Mb+ of content it didn't make sense to include it in the mainline website repo. Instead, it's linked in as a module.

## Thurston Hunger's weekly hand curation method
1. Run a report for a week, eg. http://spidey.kfjc.org/numa/tops/index.php?sd=20160727&ed=20160803 
2. View the Source of that output and pluck out the info from the `<!-- Begin Top Plays Table -->` on down to the end of the file.
3. `ssh voyeur.kfjc.org` (Brian can provide a login or perhaps other ways of connecting)
4. `cd /usr/local/apache2/htdocs/kfjc/md/pl/tops`
5. edit the `index.html` to add a new bullet for a new week
6. in the `2016/` or appropriate subdir cp a previous weekly report and stuff in the info plucked form the numa run:
    * `cp tops_06302016.html tops_06232016.html`
    * `vi tops_06232016.html` (or edit other ways)
    * replace the old Begin Top Plays Table on down with the new

## TODO
1. Automate
2. Consider converting all of this to .tsv or similar plaintext format, and changing the website to render that with a template. (Fox June 2017)
