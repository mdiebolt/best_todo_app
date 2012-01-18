namespace "STRd6.Views.Todos", (Todos) ->
  class Todos.Item extends STRd6.View
    className: 'todo'

    events:
      'click': 'changeName'

    initialize: ->
      super

      @model.bind 'change:name', =>
        @render()

    changeName: =>
      @model.set
        name: "Rad"

    render: =>
      @el.html "<b>#{@model.get('name')}</b>"

      return @
