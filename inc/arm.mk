#
# efi-arm.mk
# Peter Jones, 2019-11-13 14:27
#
ifeq ($(EFI_ARCH),arm)

EFI_ARCH_3264 :=
EFI_ARCH_SUBSYSTEM := 0xa

EFI_ARCH_CFLAGS := -mno-unaligned-access -DPAGE_SIZE=4096 -DPAGE_SHIFT=12
EFI_ARCH_LDFLAGS := --defsym=EFI_SUBSYSTEM=$(EFI_ARCH_SUBSYSTEM)
EFI_ARCH_FORMAT := -O binary
EFI_ARCH_SUFFIX := arm
EFI_ARCH_SUFFIX_UPPER := ARM
EFI_ARCH_TIMESTAMP_LOCATION := 72
EFI_ARCH_HAVE_OBJCOPY := y

export EFI_ARCH_CFLAGS EFI_ARCH_CPPFLAGS EFI_ARCH_LDFLAGS
export EFI_ARCH_FORMAT EFI_ARCH_SUBSYSTEM EFI_ARCH_SUFFIX EFI_ARCH_SUFFIX_UPPER
export EFI_ARCH_TIMESTAMP_LOCATION EFI_ARCH_3264 EFI_ARCH_HAVE_OBJCOPY
endif