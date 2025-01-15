deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'raspberrypi5'
	name: 'Raspberry Pi 5'
	arch: 'aarch64'
	state: 'released'

	instructions: commonImg.instructions

	options: [ networkOptions.group ]

	yocto:
		machine: 'raspberrypi5'
		image: 'uinta-image'
		fstype: 'uintaos-img'
		version: 'yocto-kirkstone'
		deployArtifact: 'uinta-image-raspberrypi5.uintaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
