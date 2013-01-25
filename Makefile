include theos/makefiles/common.mk

TWEAK_NAME = trustme
trustme_FILES = Tweak.xm
trustme_FRAMEWORKS = Security

include $(THEOS_MAKE_PATH)/tweak.mk
