### Put this file to android source dir for compiling.
### Maybe you can using "mm -B" to build the so
LOCAL_PATH := $(call my-dir)

### shared library

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	android/com_android_inputmethod_pinyin_PinyinDecoderService.cpp \
	share/dictbuilder.cpp \
	share/dictlist.cpp \
	share/dicttrie.cpp \
	share/lpicache.cpp \
	share/matrixsearch.cpp \
	share/mystdlib.cpp \
	share/ngram.cpp \
	share/pinyinime.cpp \
	share/searchutility.cpp \
	share/spellingtable.cpp \
	share/spellingtrie.cpp \
	share/splparser.cpp \
	share/userdict.cpp \
	share/utf16char.cpp \
	share/utf16reader.cpp \
	share/sync.cpp

LOCAL_C_INCLUDES += $(JNI_H_INCLUDE)
LOCAL_LDLIBS += -lpthread
LOCAL_MODULE := libjni_pinyinime
LOCAL_SHARED_LIBRARIES := libcutils libutils

include $(BUILD_SHARED_LIBRARY)