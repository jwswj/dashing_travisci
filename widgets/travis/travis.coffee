class Dashing.Travis extends Dashing.Widget
  ready: ->
    @get('unordered')
    if @get('unordered')
      $(@node).find('ol').remove()
    else
      $(@node).find('ul').remove()
    @_checkStatus(@items[0].state)

  onData: (data) ->
    @_checkStatus(data.items[0].state)

  _checkStatus: (status) ->
    $(@node).removeClass('errored failed passed started')
    $(@node).addClass(status)