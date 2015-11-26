React = require 'react'
counterpart = require 'counterpart'
Translate = require 'react-translate-component'

module.exports = React.createClass
	render: ->
		<div className="eduportal-page">
			<div>EduPortal</div>
			<canvas id="eduportal" />
		</div>
