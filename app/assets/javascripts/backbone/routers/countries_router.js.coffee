class BackboneRailsApp.Routers.CountriesRouter extends Backbone.Router
  initialize: (options) ->
    @countries = new BackboneRailsApp.Collections.CountriesCollection()
    @countries.reset options.countries

  routes:
    "new"      : "newCountry"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newCountry: ->
    @view = new BackboneRailsApp.Views.Countries.NewView(collection: @countries)
    $("#countries").html(@view.render().el)

  index: ->
    @view = new BackboneRailsApp.Views.Countries.IndexView(countries: @countries)
    $("#countries").html(@view.render().el)

  show: (id) ->
    country = @countries.get(id)

    @view = new BackboneRailsApp.Views.Countries.ShowView(model: country)
    $("#countries").html(@view.render().el)

  edit: (id) ->
    country = @countries.get(id)

    @view = new BackboneRailsApp.Views.Countries.EditView(model: country)
    $("#countries").html(@view.render().el)
