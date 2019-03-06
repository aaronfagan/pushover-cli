# Pushover CLI
A command line tool for [Pushover](https://pushover.net/) notifications. This project is not written, maintained, or supported by Superblock (the creators of Pushover), and is not an official tool.

## Installation
```
git clone git@github.com:aaronfagan/pushover-cli.git && \
find ./pushover-cli -type f -name "install.sh" -exec chmod +x {} \; -exec bash {} \; && \
rm -rf ./pushover-cli
```

## Usage
Run `pushover --help` for usage instructions.

### Configuration
```
pushover --config
```

### Upgrade
This option will upgrade to the latest release.
```
pushover --upgrade
```

### Upgrade/Downgrade
You can upgrade or downgrade to any version by specifying the version number, like `v1.1.0`.
```
pushover --upgrade v1.1.0
```

# Contributors
* Aaron Fagan - [Github](https://github.com/aaronfagan), [Website](https://www.aaronfagan.ca/)
