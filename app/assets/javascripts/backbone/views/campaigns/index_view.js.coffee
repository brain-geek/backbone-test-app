BackboneRailsApp.Views.Campaigns ||= {}

class BackboneRailsApp.Views.Campaigns.IndexView extends Backbone.View
  template: JST["backbone/templates/campaigns/index"]

  initialize: () ->
    @options.campaigns.bind('reset', @addAll)

  addAll: () =>
    @options.campaigns.each(@addOne)

  addOne: (campaign) =>
    view = new BackboneRailsApp.Views.Campaigns.CampaignView({model : campaign})
    @$("#campaigns-table > tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(campaigns: @options.campaigns.toJSON() ))
    @addAll()

    return this
