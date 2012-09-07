BackboneRailsApp.Views.Campaigns ||= {}

class BackboneRailsApp.Views.Campaigns.ShowView extends Backbone.View
  template: JST["backbone/templates/campaigns/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
