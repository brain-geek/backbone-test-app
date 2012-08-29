BackboneRailsApp.Views.Countries ||= {}

class BackboneRailsApp.Views.Countries.IndexView extends Backbone.View
  template: JST["backbone/templates/countries/index"]

  initialize: () ->
    @options.countries.bind('reset', @addAll)

  addAll: () =>
    @options.countries.each(@addOne)

  addOne: (country) =>
    view = new BackboneRailsApp.Views.Countries.CountryView({model : country})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(countries: @options.countries.toJSON() ))
    @addAll()

    return this
