class BackboneRailsApp.Models.Base extends Backbone.Model

  secureAttributes: [
    'created_at', 'updated_at'
  ]

  toJSON: ->
    @_cloneAttributes();

  _cloneAttributes: ->
    attributes = _.clone(@attributes)
    for sa in @secureAttributes
      delete attributes[sa]
    _.clone(attributes)
