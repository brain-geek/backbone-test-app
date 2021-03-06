BackboneRailsApp.Views.Campaigns ||= {}

class BackboneRailsApp.Views.Campaigns.NewView extends Backbone.View
  template: JST["backbone/templates/campaigns/new"]

  events:
    "submit #new-campaign": "save"

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
      success: (campaign) =>
        @model = campaign
        window.location.hash = "/#{@model.id}"

      error: (campaign, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
