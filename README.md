# Pushover CLI
A command line interface for [Pushover](https://pushover.net/) notifications. This project is not written, maintained, or supported by Superblock (the creators of Pushover), and is not an official tool.

## Installation
```
curl -s https://raw.githubusercontent.com/aaronfagan/pushover-cli/master/install.sh | sudo bash
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

# Contributors
* Aaron Fagan - [Github](https://github.com/aaronfagan), [Website](https://www.aaronfagan.ca/)
