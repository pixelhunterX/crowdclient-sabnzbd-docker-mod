# CrowdClient Docker mod for LSIO SABnzbd image

This mod adds installs CrowdClient to enable CrowdNFO integration in SABnzbd. It also installs dependencies like `mediainfo` and a missing certificate, and sets up the necessary configuration files.

In sabnzbd docker arguments, set an environment variable `DOCKER_MODS=linuxserver/mods:dummy-url`
Please define a SCRIPT_DIR variable to specify your SABnzbd script directory. If not set, it defaults to `/data/scripts`.

If adding multiple mods, enter them in an array separated by `|`, such as `DOCKER_MODS=linuxserver/mods:openssh-server-rsync|linuxserver/mods:openssh-server-mod2`