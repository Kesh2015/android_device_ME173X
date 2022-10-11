# Here we define a variable called "LOCAL_PATH" that just contain the path to the device tree (ex: /device/asus/me173x)
LOCAL_PATH := $(call my-dir)

# Here we open an if statement that will be true if the user requested to build that device.
ifneq ($(filter ME173X,$(TARGET_DEVICE)),)
	# Here we call other makefiles in the device-tree
	include $(call all-subdir-makefiles,$(LOCAL_PATH))
	
	# Here we clean variables
	include $(CLEAR_VARS)
	
	# Here we close the if statement.
endif
