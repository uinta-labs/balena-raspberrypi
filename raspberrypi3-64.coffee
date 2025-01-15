deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'raspberrypi3-64'
	aliases: [ 'raspberrypi3-64' ]
	name: 'Raspberry Pi 3'
	arch: 'aarch64'
	state: 'released'

	instructions: commonImg.instructions

	options: [ networkOptions.group ]

	yocto:
		machine: 'raspberrypi3-64'
		image: 'uinta-image'
		fstype: 'uintaos-img'
		version: 'yocto-kirkstone'
		deployArtifact: 'uinta-image-raspberrypi3-64.uintaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
