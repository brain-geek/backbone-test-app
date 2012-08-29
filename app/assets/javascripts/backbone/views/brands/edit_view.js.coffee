BackboneRailsApp.Views.Brands ||= {}

class BackboneRailsApp.Views.Brands.EditView extends Backbone.View
  template : JST["backbone/templates/brands/edit"]

  events :
    "submit #edit-brand" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (brand) =>
        @model = brand
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
