THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = Authenticate

Authenticate_FILES = Authenticate.m
Authenticate_FRAMEWORKS = UIKit LocalAuthentication
Authenticate_CFLAGS = -fobjc-arc
Authenticate_INSTALL_PATH = /usr/local/lib

include $(THEOS_MAKE_PATH)/library.mk
