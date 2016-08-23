# multimonitor_infoscreen
Display webpages on multiple physical monitors using Firefox profiles and xdotool

## Required packages



## Installation
1. Install required packages
    * xdotool: move and resize windows
    * firefox: display website content

1. Setup Firefox profiles

    Each physical display is assigned to a Firefox profile

    1. Close all Firefox windows, start Firefox ProfileManager via:
    ```bash
    $ firefox -ProfileManager
    ```
    1. Add one profile for each physical display (name it e.g. ffp1...ffpx)
    1. Start ProfileManager again, select one pofile, start Firefox
      1. Install an auto reloading Add-On if needed, e.g. https://addons.mozilla.org/de/firefox/addon/tab-auto-reload/ or https://addons.mozilla.org/en-us/firefox/addon/reloadevery/
      1. Disable close notification (trying to close multiple tabs)

1. Setup displays as extended workspace in your desktop environment

    If the monitors are physically switched off (e.g. motion detector to save power) and do not recover in the same order when being powered again, use a xrandr script to rearrange them.

    If the come properly up or will stay powered the whole time, skip this.

    1. Obtain arandr from https://christian.amsuess.com/tools/arandr/.
    1. Start arandr, arrange all displays as extended workspace, save the configuration as shell script

TODO: write udev rule to rearrange monitors


1. Setup infoscreen.sh

    Clone from Github to local folder

    ```bash
    $ git clone https://github.com/neo0x3d/infoscreen
    $ sudo mv infoscreen /opt/infoscreen
    ```

    1. Change the number of sections in the script
    1. In each section set the Firefox profile name, horizontal location, URL and name to search

1. Add to cronjob

TODO: write cronjob (run as specific user) instructions

1. Add script to the startup application in your auto logged in user session

## History

v1.0 initial release

## License

See [LICENSE](LICENSE)
