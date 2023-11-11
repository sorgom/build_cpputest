# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=release
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq ($(shell echo "test"), "test")
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

RESCOMP = windres
TARGETDIR = lib
TARGET = $(TARGETDIR)/libCppUTest.a
INCLUDES += -ICppUTest/include
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS +=
LDDEPS +=
LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),release)
OBJDIR = build/obj/release/release/CppUTest
DEFINES += -DNDEBUG -DCPPUTEST_USE_LONG_LONG=0
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2
ALL_LDFLAGS += $(LDFLAGS) -s

else ifeq ($(config),debug)
OBJDIR = build/obj/debug/debug/CppUTest
DEFINES += -DDEBUG -DCPPUTEST_USE_LONG_LONG=0
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g
ALL_LDFLAGS += $(LDFLAGS)

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=

GENERATED += $(OBJDIR)/CommandLineArguments.o
GENERATED += $(OBJDIR)/CommandLineTestRunner.o
GENERATED += $(OBJDIR)/JUnitTestOutput.o
GENERATED += $(OBJDIR)/MemoryLeakDetector.o
GENERATED += $(OBJDIR)/MemoryLeakWarningPlugin.o
GENERATED += $(OBJDIR)/SimpleMutex.o
GENERATED += $(OBJDIR)/SimpleString.o
GENERATED += $(OBJDIR)/SimpleStringInternalCache.o
GENERATED += $(OBJDIR)/TeamCityTestOutput.o
GENERATED += $(OBJDIR)/TestFailure.o
GENERATED += $(OBJDIR)/TestFilter.o
GENERATED += $(OBJDIR)/TestHarness_c.o
GENERATED += $(OBJDIR)/TestMemoryAllocator.o
GENERATED += $(OBJDIR)/TestOutput.o
GENERATED += $(OBJDIR)/TestPlugin.o
GENERATED += $(OBJDIR)/TestRegistry.o
GENERATED += $(OBJDIR)/TestResult.o
GENERATED += $(OBJDIR)/TestTestingFixture.o
GENERATED += $(OBJDIR)/Utest.o
GENERATED += $(OBJDIR)/UtestPlatform.o
OBJECTS += $(OBJDIR)/CommandLineArguments.o
OBJECTS += $(OBJDIR)/CommandLineTestRunner.o
OBJECTS += $(OBJDIR)/JUnitTestOutput.o
OBJECTS += $(OBJDIR)/MemoryLeakDetector.o
OBJECTS += $(OBJDIR)/MemoryLeakWarningPlugin.o
OBJECTS += $(OBJDIR)/SimpleMutex.o
OBJECTS += $(OBJDIR)/SimpleString.o
OBJECTS += $(OBJDIR)/SimpleStringInternalCache.o
OBJECTS += $(OBJDIR)/TeamCityTestOutput.o
OBJECTS += $(OBJDIR)/TestFailure.o
OBJECTS += $(OBJDIR)/TestFilter.o
OBJECTS += $(OBJDIR)/TestHarness_c.o
OBJECTS += $(OBJDIR)/TestMemoryAllocator.o
OBJECTS += $(OBJDIR)/TestOutput.o
OBJECTS += $(OBJDIR)/TestPlugin.o
OBJECTS += $(OBJDIR)/TestRegistry.o
OBJECTS += $(OBJDIR)/TestResult.o
OBJECTS += $(OBJDIR)/TestTestingFixture.o
OBJECTS += $(OBJDIR)/Utest.o
OBJECTS += $(OBJDIR)/UtestPlatform.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking CppUTest
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning CppUTest
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(GENERATED)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(GENERATED)) del /s /q $(subst /,\\,$(GENERATED))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/CommandLineArguments.o: CppUTest/src/CppUTest/CommandLineArguments.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CommandLineTestRunner.o: CppUTest/src/CppUTest/CommandLineTestRunner.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/JUnitTestOutput.o: CppUTest/src/CppUTest/JUnitTestOutput.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MemoryLeakDetector.o: CppUTest/src/CppUTest/MemoryLeakDetector.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MemoryLeakWarningPlugin.o: CppUTest/src/CppUTest/MemoryLeakWarningPlugin.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SimpleMutex.o: CppUTest/src/CppUTest/SimpleMutex.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SimpleString.o: CppUTest/src/CppUTest/SimpleString.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SimpleStringInternalCache.o: CppUTest/src/CppUTest/SimpleStringInternalCache.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/TeamCityTestOutput.o: CppUTest/src/CppUTest/TeamCityTestOutput.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/TestFailure.o: CppUTest/src/CppUTest/TestFailure.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/TestFilter.o: CppUTest/src/CppUTest/TestFilter.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/TestHarness_c.o: CppUTest/src/CppUTest/TestHarness_c.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/TestMemoryAllocator.o: CppUTest/src/CppUTest/TestMemoryAllocator.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/TestOutput.o: CppUTest/src/CppUTest/TestOutput.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/TestPlugin.o: CppUTest/src/CppUTest/TestPlugin.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/TestRegistry.o: CppUTest/src/CppUTest/TestRegistry.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/TestResult.o: CppUTest/src/CppUTest/TestResult.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/TestTestingFixture.o: CppUTest/src/CppUTest/TestTestingFixture.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/Utest.o: CppUTest/src/CppUTest/Utest.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/UtestPlatform.o: CppUTest/src/Platforms/Gcc/UtestPlatform.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif