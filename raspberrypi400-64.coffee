deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'raspberrypi400-64'
	aliases: [ 'raspberrypi400-64' ]
	name: 'Raspberry Pi 400'
	arch: 'aarch64'
	state: 'new'

	instructions: commonImg.instructions

	options: [ networkOptions.group ]

	yocto:
		machine: 'raspberrypi400-64'
		image: 'uinta-image'
		fstype: 'uintaos-img'
		version: 'yocto-kirkstone'
		deployArtifact: 'uinta-image-raspberrypi400-64.uintaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
