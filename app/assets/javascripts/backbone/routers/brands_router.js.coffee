class BackboneRailsApp.Routers.BrandsRouter extends Backbone.Router
  initialize: (options) ->
    @brands = new BackboneRailsApp.Collections.BrandsCollection()
    @brands.reset options.brands

  routes:
    "new"      : "newBrand"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newBrand: ->
    @view = new BackboneRailsApp.Views.Brands.NewView(collection: @brands)
    $("#brands").html(@view.render().el)

  index: ->
    @view = new BackboneRailsApp.Views.Brands.IndexView(brands: @brands)
    $("#brands").html(@view.render().el)

  show: (id) ->
    brand = @brands.get(id)

    @view = new BackboneRailsApp.Views.Brands.ShowView(model: brand)
    $("#brands").html(@view.render().el)

  edit: (id) ->
    brand = @brands.get(id)

    @view = new BackboneRailsApp.Views.Brands.EditView(model: brand)
    $("#brands").html(@view.render().el)
