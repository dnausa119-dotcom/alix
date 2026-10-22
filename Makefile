TARGET := iphone:clang:latest:14.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FaustiOSHack

FaustiOSHack_FILES = Tweak.mm
FaustiOSHack_CFLAGS = -fobjc-arc -std=c++17
FaustiOSHack_LIBRARIES = z

# إنشاء مجلد الحزم تلقائياً لتجنب خطأ عدم وجود القاعدة
before-package::
	@mkdir -p packages

after-stage::
	@echo "Skipping signing..."

include $(THEOS_MAKE_PATH)/tweak.mk
