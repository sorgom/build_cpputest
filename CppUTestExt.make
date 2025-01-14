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
TARGET = $(TARGETDIR)/libCppUTestExt.a
INCLUDES += -Icpputest/include
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
OBJDIR = build/obj/release/release/CppUTestExt
DEFINES += -DNDEBUG -DCPPUTEST_USE_LONG_LONG=0
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O2 -pedantic-errors -Werror
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O2 -pedantic-errors -Werror
ALL_LDFLAGS += $(LDFLAGS) -s

else ifeq ($(config),debug)
OBJDIR = build/obj/debug/debug/CppUTestExt
DEFINES += -DDEBUG -DCPPUTEST_USE_LONG_LONG=0
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g -pedantic-errors -Werror
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g -pedantic-errors -Werror
ALL_LDFLAGS += $(LDFLAGS)

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=

GENERATED += $(OBJDIR)/CodeMemoryReportFormatter.o
GENERATED += $(OBJDIR)/GTest.o
GENERATED += $(OBJDIR)/IEEE754ExceptionsPlugin.o
GENERATED += $(OBJDIR)/MemoryReportAllocator.o
GENERATED += $(OBJDIR)/MemoryReportFormatter.o
GENERATED += $(OBJDIR)/MemoryReporterPlugin.o
GENERATED += $(OBJDIR)/MockActualCall.o
GENERATED += $(OBJDIR)/MockExpectedCall.o
GENERATED += $(OBJDIR)/MockExpectedCallsList.o
GENERATED += $(OBJDIR)/MockFailure.o
GENERATED += $(OBJDIR)/MockNamedValue.o
GENERATED += $(OBJDIR)/MockSupport.o
GENERATED += $(OBJDIR)/MockSupportPlugin.o
GENERATED += $(OBJDIR)/MockSupport_c.o
GENERATED += $(OBJDIR)/OrderedTest.o
OBJECTS += $(OBJDIR)/CodeMemoryReportFormatter.o
OBJECTS += $(OBJDIR)/GTest.o
OBJECTS += $(OBJDIR)/IEEE754ExceptionsPlugin.o
OBJECTS += $(OBJDIR)/MemoryReportAllocator.o
OBJECTS += $(OBJDIR)/MemoryReportFormatter.o
OBJECTS += $(OBJDIR)/MemoryReporterPlugin.o
OBJECTS += $(OBJDIR)/MockActualCall.o
OBJECTS += $(OBJDIR)/MockExpectedCall.o
OBJECTS += $(OBJDIR)/MockExpectedCallsList.o
OBJECTS += $(OBJDIR)/MockFailure.o
OBJECTS += $(OBJDIR)/MockNamedValue.o
OBJECTS += $(OBJDIR)/MockSupport.o
OBJECTS += $(OBJDIR)/MockSupportPlugin.o
OBJECTS += $(OBJDIR)/MockSupport_c.o
OBJECTS += $(OBJDIR)/OrderedTest.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking CppUTestExt
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
	@echo Cleaning CppUTestExt
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

$(OBJDIR)/CodeMemoryReportFormatter.o: cpputest/src/CppUTestExt/CodeMemoryReportFormatter.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/GTest.o: cpputest/src/CppUTestExt/GTest.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/IEEE754ExceptionsPlugin.o: cpputest/src/CppUTestExt/IEEE754ExceptionsPlugin.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MemoryReportAllocator.o: cpputest/src/CppUTestExt/MemoryReportAllocator.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MemoryReportFormatter.o: cpputest/src/CppUTestExt/MemoryReportFormatter.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MemoryReporterPlugin.o: cpputest/src/CppUTestExt/MemoryReporterPlugin.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MockActualCall.o: cpputest/src/CppUTestExt/MockActualCall.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MockExpectedCall.o: cpputest/src/CppUTestExt/MockExpectedCall.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MockExpectedCallsList.o: cpputest/src/CppUTestExt/MockExpectedCallsList.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MockFailure.o: cpputest/src/CppUTestExt/MockFailure.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MockNamedValue.o: cpputest/src/CppUTestExt/MockNamedValue.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MockSupport.o: cpputest/src/CppUTestExt/MockSupport.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MockSupportPlugin.o: cpputest/src/CppUTestExt/MockSupportPlugin.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/MockSupport_c.o: cpputest/src/CppUTestExt/MockSupport_c.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/OrderedTest.o: cpputest/src/CppUTestExt/OrderedTest.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif