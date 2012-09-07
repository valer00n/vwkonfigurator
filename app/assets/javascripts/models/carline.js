App.Carline = DS.Model.extend({

  resourceUrl: '/contacts',
  resourceName:       'contact',
  resourceProperties: ['title', 'description','price'],

  title: DS.attr('string'),
  description: DS.attr('string'),
  price: DS.attr('number')

});