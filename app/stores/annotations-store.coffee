Reflux = require 'reflux'
_ = require 'lodash'

classifierActions = require '../actions/classifier-actions'

module.exports = Reflux.createStore
  listenables: classifierActions

  data: []

  getInitialState: ->
    @data

  onAnnotate: (annotation) ->
    @data.push annotation
    @trigger @data

  onRemoveAnnotation: (choiceID) ->
    removeAnnotationIndex = _.findIndex @data, 'choice': choiceID

    @data.splice removeAnnotationIndex, 1
    @trigger @data


  onMoveToNextSubject: ->
    @_clear()

  _clear: ->
    @data = []
    @trigger @data
