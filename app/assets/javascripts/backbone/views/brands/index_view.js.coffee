BackboneRailsApp.Views.Brands ||= {}

class BackboneRailsApp.Views.Brands.IndexView extends Backbone.View
  template: JST["backbone/templates/brands/index"]

  initialize: () ->
    @options.brands.bind('reset', @addAll)

  addAll: () =>
    @options.brands.each(@addOne)

  addOne: (brand) =>
    view = new BackboneRailsApp.Views.Brands.BrandView({model : brand})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(brands: @options.brands.toJSON() ))
    @addAll()

    return this
