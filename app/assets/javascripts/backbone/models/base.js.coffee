class BackboneRailsApp.Models.Base extends Backbone.GSModel

  secureAttributes: [
    'created_at', 'updated_at', 'lang_changed'
  ]

  toJSON: ->
    @_cloneAttributes();

  _cloneAttributes: ->
    attributes = _.clone(@attributes)
    for sa in @secureAttributes
      delete attributes[sa]
    _.clone(attributes)
