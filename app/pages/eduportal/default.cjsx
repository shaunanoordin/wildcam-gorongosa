React = require 'react'
Router = {Link} = require 'react-router'

module.exports = React.createClass
  displayName: "Eduportal"

  getInitialState: ->
    return {
      userStatus: ""
    }
  
  toggleUserStatus: ->
    if @state.userStatus == ""
      @setState({
        userStatus: "teacher"
      });
    else
      @setState({
        userStatus: ""
      });
      
  render: ->
    <div className="content">
      <div className="text">
        <h1>[{@state.userStatus}]</h1>
        <button type="button" onClick={@toggleUserStatus}>a {(@state.userStatus == "teacher") ? "TEACHER DASHBOARD" : "STUDENT/GENERAL DASHBOARD" } z</button>
      </div>
    </div>
