React = require 'react'
counterpart = require 'counterpart'
Translate = require 'react-translate-component'

module.exports = React.createClass
  getInitialState: ->
    return {
      data: "Initialisation"
    }
  
  onClick: ->
    @setState({
      data: "CLICKED"
    });

  onChange: (text) ->
    @setState({
      data: "CHANGED"
    });

  render: ->
    <div className="eduportal-page">
      <div className="controls">
        <div className="console-out">{@state.data}</div>        
        <div className="console-in">
          <input
            type="text"
            ref="consoleIn"
            placeholder="Test input..."
            onChange={@onChange}
            onClick={@onClick}
          />
           <button type="button" onClick={@onClick}>Click Me!</button> 
        </div>
      </div>
      <div className="visuals">
        <canvas id="eduportal" width="800" height="500"></canvas>
      </div>
    </div>
