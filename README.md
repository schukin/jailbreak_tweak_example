# Jailbreak tweak guide

1. Open up `Tweak.xm`, and write any overridden method implementations there.

2. Open `MyTweak.plist`, and change the bundle ID to that of whatever app you're trying to tweak.

3. Make sure `THEOS_DEVICE_IP` is set, and your device is on the same network.

		$ export THEOS_DEVICE_IP=127.168.0.9 # replace this with your device IP address

4. Deploy to your jailbroken device

		$ make package install

5. If everything goes well, you'll be prompted to enter your device's password (by default, the root password is `alpine`).

## Troubleshooting

I almost certainly skipped over some steps. Here's a guide on Reddit which I [mostly] depended on to get up & running:

[Flex to MobileSubstrate: A beginner's guide to making a tweak.](http://www.reddit.com/r/jailbreak/comments/20nxy8/flex_to_mobilesubstrate_a_beginners_guide_to/)