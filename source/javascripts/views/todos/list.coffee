namespace "STRd6.Views.Todos", (Todos) ->
  class Todos.List extends STRd6.View
    {Models} = STRd6

    initialize: ->
      super

      @collection = new Models.Todos

      for number in [0..2]
        @collection.add new Models.Todo

      @el.append '<h1>My Todo List</h1>'

    appendItem: (item) =>
      itemView = new Todos.Item
        model: item

      @el.append(itemView.render().el)

    render: =>
      @$('.todo').empty()

      @collection.each @appendItem

      return @

