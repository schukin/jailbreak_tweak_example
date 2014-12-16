ARCHS = armv7 armv7s arm64
include theos/makefiles/common.mk

TWEAK_NAME = MyTweak
MyTweak_FILES = Tweak.xm
MyTweak_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk


