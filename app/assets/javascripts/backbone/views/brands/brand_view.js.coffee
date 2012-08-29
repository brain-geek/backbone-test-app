BackboneRailsApp.Views.Brands ||= {}

class BackboneRailsApp.Views.Brands.BrandView extends Backbone.View
  template: JST["backbone/templates/brands/brand"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
