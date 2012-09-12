Vwkonfigurator.CarOption = DS.Model.extend({
  _id: DS.attr('string'),
  token: DS.attr('string'),  
  primaryKey: "token",     
  name: DS.attr('string'),
  price: DS.attr('number'),
  category: DS.attr('string')
});