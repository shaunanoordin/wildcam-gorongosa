React = require 'react'
counterpart = require 'counterpart'
Translate = require 'react-translate-component'

module.exports = React.createClass
  render: ->
    <div className="eduportal-page">
      <div className="controls">
        This is the Education Portal.
        CONTROLS! CONTROLS!
      </div>
      <div className="visuals">
        VISUALS!<br/>
        <canvas id="eduportal" width="800" height="500"></canvas>
      </div>
    </div>
