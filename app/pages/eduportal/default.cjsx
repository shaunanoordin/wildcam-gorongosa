React = require 'react'
Router = {Link} = require 'react-router'

module.exports = React.createClass
  displayName: "Eduportal"

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
    <div className="content">
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
          <Link to="about" className="main-header-link">Go To</Link>
        </div>
      </div>
      <div className="visuals">
        <canvas id="eduportal" width="800" height="500"></canvas>
      </div>
    </div>
