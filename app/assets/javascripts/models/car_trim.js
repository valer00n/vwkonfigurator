Vwkonfigurator.CarTrim = DS.Model.extend({
  token: DS.attr('string'),  
  name: DS.attr('string'),
  description: DS.attr('string'),
  price: DS.attr('number'),
  url: DS.attr('string')
});