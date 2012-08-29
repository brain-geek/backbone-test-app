BackboneRailsApp.Views.Brands ||= {}

class BackboneRailsApp.Views.Brands.NewView extends Backbone.View
  template: JST["backbone/templates/brands/new"]

  events:
    "submit #new-brand": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (brand) =>
        @model = brand
        window.location.hash = "/#{@model.id}"

      error: (brand, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
