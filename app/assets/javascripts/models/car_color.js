Vwkonfigurator.CarColor = DS.Model.extend({
  _id: DS.attr('string'),
  token: DS.attr('string'),  
  primaryKey: "token",     
  name: DS.attr('string'),
  image: DS.attr('string'),
  price: DS.attr('number')
});