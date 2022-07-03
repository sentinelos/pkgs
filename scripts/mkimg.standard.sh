profile_standard() {
	title="Standard"
	desc="SentinelOS as it was intended.
		Just enough to get you started.
		Network connection is required."
	profile_base
	profile_abbrev="std"
	image_ext="iso"
	arch="aarch64 armv7 x86 x86_64 ppc64le riscv64 s390x"
	output_format="iso"
	kernel_addons="xtables-addons"
	case "$ARCH" in
	s390x)
		apks="$apks s390-tools"
		initfs_features="$initfs_features dasd_mod qeth zfcp"
		initfs_cmdline="modules=loop,squashfs,dasd_mod,qeth,zfcp quiet"
		;;
	ppc64le)
		initfs_cmdline="modules=loop,squashfs,sd-mod,usb-storage,ibmvscsi quiet"
		;;
	riscv64)
		kernel_flavors="edge"
		kernel_cmdline="console=tty0 console=ttyS0,115200 console=ttySIF0,115200"
		kernel_addons=
		;;
	esac
}
