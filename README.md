# Pushover CLI
A command line interface for [Pushover](https://pushover.net/) notifications. This project is not written, maintained, or supported by Superblock (the creators of Pushover), and is not an official tool.

## Installation
```
curl https://raw.githubusercontent.com/aaronfagan/pushover-cli/develop/install.sh | bash
```

## Usage
Run `pushover --help` for usage instructions.

### Configuration
This option allows you to set a global user key and application API token. This can be overridden on a per-use basis by specifying the `--user` and `--token` options.
```
pushover --config
```

### Upgrade
This option will upgrade to the latest release version.
```
pushover --upgrade
```

### Downgrade
You can downgrade to any previous release version by specifying the version number, like `v1.1.0`. For a complete list of available versions, see [here](https://github.com/aaronfagan/pushover-cli/releases).
```
pushover --upgrade v1.1.0
```

# Contributors
* Aaron Fagan - [Github](https://github.com/aaronfagan), [Website](https://www.aaronfagan.ca/)
