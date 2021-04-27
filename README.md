# Backlight switch for Raspberry Pi

[![rpi-backlight](https://snapcraft.io/rpi-backlight/badge.svg)](https://snapcraft.io/rpi-backlight)

RPI-Backlight is a very small tool written as bash script to switch the backlight on and off by timer. By default the timer turn the lights off at 11pm and on at 06am. Both parameters can be changed by configuration.

The tool is build for a Raspberry Pi 3 B+ setup running Ubuntu Core. The snap is based on core18.

## How to install

[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-white.svg)](https://snapcraft.io/rpi-backlight)

For the latest stable version:

```
sudo snap install rpi-backlight
```

## How to use

Check the default settings with `snap get rpi-backlight`. To change default time settings:

```
# Night start time
sudo snap set rpi-backlight nightstart="23:00"

# Night end time
sudo snap set rpi-backlight nightend="06:00"
```

## Contribution

Contributions are welcome! Please discuss your idea first inside an Github issue.

## License

This project is licensed under [MIT](LICENSE).