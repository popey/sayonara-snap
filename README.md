**Sayonara Snap**

*Notes*

 * Followed [build instructions](https://sayonara-player.com/forum/viewthread.php?tid=2) from [upstream](https://sayonara-player.com/)

*Building*

On an up-to-date 16.04 system, install snapcraft and run `snapcraft` in the same directory as this README

*Things which work*

* Sayonara launches in devmode, not when not in devmode

*Things which don't work*

 * In non-devmode, the app fails to launch as it attempts to read from `/proc/<id>/cmdline`
 * In devmode the app launches but:-
  * Themes don't work correctly (no dark theme as shown in the [OMGUbuntu article](http://www.omgubuntu.co.uk/2016/09/sayonara-music-player-update-ppa))
  * No audio playback (pretty fundamental for a music player ;) )
