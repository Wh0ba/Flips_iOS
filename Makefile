include $(THEOS)/makefiles/common.mk

TOOL_NAME = flips
$(TOOL_NAME)_FILES = $(wildcard helpers/*.cpp) $(wildcard helpers/*.c)

$(TOOL_NAME)_CFLAGS = -DFLIPS_CLI
$(TOOL_NAME)_LIBRARIES = c++
CCFLAGS += -std=c++11 

TARGET_CODESIGN_FLAGS = -Sent.xml

include $(THEOS_MAKE_PATH)/tool.mk
