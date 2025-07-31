# CrowdClient Docker Mod for LSIO SABnzbd image

This mod adds installs CrowdClient to enable CrowdNFO integration in SABnzbd. It also installs dependencies like `mediainfo` and a missing certificate, and sets up the necessary configuration files.

In the SABnzbd Docker arguments, set the environment variable `DOCKER_MODS=ghcr.io/pixelhunterx/docker-mods:sabnzbd-crowdclient` to apply this mod.
Please also define a `SCRIPT_DIR` variable (e.g. `SCRIPT_DIR="/path/to/your/scripts"`) to specify your SABnzbd script directory. If not set, it defaults to `/data/scripts`.
This does not change any SABnzbd settings, but tells the mod where to store the CrowdClient binary and configuration file. You still have to set a scripts directory in your SABnzbd settings.

For example, in your `docker-compose.yml`:

```yaml
---
services:
  sabnzbd:
    image: lscr.io/linuxserver/sabnzbd:latest
    container_name: sabnzbd
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Berlin
      - DOCKER_MODS=ghcr.io/pixelhunterx/docker-mods:sabnzbd-crowdclient
      - SCRIPT_DIR="/path/to/your/scripts"
    volumes:
      - /path/to/sabnzbd/config:/config
      - /path/to/incomplete/downloads:/incomplete-downloads #optional
      - /path/to/downloads:/downloads #optional
    ports:
      - 8080:8080
    restart: unless-stopped
```

If adding multiple mods, enter them in an array separated by `|`, such as `DOCKER_MODS=ghcr.io/pixelhunterx/docker-mods:sabnzbd-crowdclient|linuxserver/mods:dummy`

For further information and configuration steps, please refer to the [CrowdClient documentation](https://github.com/pixelhunterX/crowdclient-sabnzbd)