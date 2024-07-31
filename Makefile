include .env

all: $(patsubst $(SOURCE_DIR)/%, $(BUILD_DIR)/%, $(shell find $(SOURCE_DIR) -type f))

$(BUILD_DIR)/%.html: $(SOURCE_DIR)/%.html $(BASE_TEMPLATE)
	@echo "ssg $<"
	@mkdir -p $(dir $@)
	@ls $(BASE_TEMPLATE) $< | ssg > $@

$(BUILD_DIR)/%: $(SOURCE_DIR)/%
	cp -u $< $@

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
