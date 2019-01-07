include $(THEOS)/makefiles/common.mk

TOOL_NAME = rompatcher
rompatcher_FILES = main.mm $(wildcard helpers/*.cpp) $(wildcard helpers/*.c)

rompatcher_CFLAGS = -fobjc-arc
rompatcher_LIBRARIES = c++
CCFLAGS += -std=c++11 

TARGET_CODESIGN_FLAGS = -Sent.xml

include $(THEOS_MAKE_PATH)/tool.mk
