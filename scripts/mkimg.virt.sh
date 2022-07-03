profile_virt() {
	profile_standard
	profile_abbrev="virt"
	title="Virtual"
	desc="Similar to standard. Slimmed down kernel. Optimized for virtual systems."
	arch="aarch64 armv7 x86 x86_64"
	kernel_addons=
	kernel_flavors="virt"
	local serial_console="ttyS0,115200"
	case "$ARCH" in
		arm*|aarch64) serial_console="ttyAMA0";;
	esac
	kernel_cmdline="console=tty0 console=$serial_console"
	syslinux_serial="0 115200"
}
