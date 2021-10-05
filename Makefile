TARGET := iphone:clang:latest:7.0


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = dinos
dinos_LIBRARIES = substrate
dinos_FILES = Tweak.xm
dinos_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
