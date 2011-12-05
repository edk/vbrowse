vbrowse
=======

A rails based video browser webapp.

Why?
----

I have a bunch of dvds ripped to my linux server, and wanted to watch them on my iPad.  In
particular, I wanted to restrict the media consumption of a 4 year old.

Features:
  - browse by category or tag.
  - playlists
  - organize new files into directory structures, autofill the metadata about the movie from imbdb
  - user accounts to have user-specific playlists
  - parental controls on accounts.  restrict to category or rating, limits on usage per day.
 
The UI is ipad friendly, with touch events recognized.  The videos are served up on my system
via apache with the apache_mod_h264_streaming-2.2.7.tar.gz plugin so you can jump around the video
quickly.  The dvds are ripped using Handbrake with the iPad profile.  I found that High Profile is
simply too much data to push to the poor ipad.


