include vendor/dora/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/dora/config/BoardConfigQcom.mk
endif

# DoraemonOS AVB Key
ifneq ($(filter OFFICIAL CI,$(DORA_BUILD_TYPE)),)
ifeq ($(TARGET_USES_DORA_AVB_KEY),true)
include vendor/dora/config/BoardConfigAvb.mk
endif
endif

include vendor/dora/config/BoardConfigSoong.mk

# Namespace for fwk-detect
TARGET_FWK_DETECT_PATH ?= hardware/qcom-caf/common
PRODUCT_SOONG_NAMESPACES += \
    $(TARGET_FWK_DETECT_PATH)/fwk-detect
