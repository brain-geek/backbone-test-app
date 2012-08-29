BackboneRailsApp.Views.Brands ||= {}

class BackboneRailsApp.Views.Brands.ShowView extends Backbone.View
  template: JST["backbone/templates/brands/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
