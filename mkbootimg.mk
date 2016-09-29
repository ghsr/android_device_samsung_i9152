LZMA_BIN := $(shell which lzma)


$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	$(hide) $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) $(INTERNAL_MKBOOTIMG_VERSION_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE))
	@echo "Made boot image: $@"

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_uncompressed_ramdisk) $(recovery_kernel)
	@echo "----- Compressing recovery ramdisk with lzma ------"
	$(hide) $(LZMA_BIN) < $(recovery_uncompressed_ramdisk) > $(recovery_ramdisk)
	@echo "----- Making recovery image ------"
	$(call build-recoveryimage-target, $@)
