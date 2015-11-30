React = require 'react'
Router = {Link, RouteHandler} = require 'react-router'
_ = require 'lodash'

module.exports = React.createClass
  displayName: 'EduportalPageController'
  mixins: [Router.State]

  getCurrentSubPageDisplayName: ->
    routeContext = @getRoutes()
    routeContext[routeContext.length - 1].handler.displayName

  getCurrentRoute: ->
    _.find @getRoutes(), (route) =>
      @.constructor is route.handler

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
    subPagesLinks = @getCurrentRoute().childRoutes.map (childRoute, i) ->
      <Link key={i} to={childRoute.name}>{childRoute.handler.displayName}</Link>

    subPageDisplayName = @getCurrentSubPageDisplayName();
  
    <div className="eduportal-page">
      <div className="subheader">
        &raquo; {subPagesLinks}
      </div>
      <RouteHandler {...@props} />
    </div>
