Vwkonfigurator.CarEngine = DS.Model.extend({
  _id: DS.attr('string'),
  token: DS.attr('string'),  
  primaryKey: "token",     
  name: DS.attr('string'),
  power: DS.attr('string'),
  transmision: DS.attr('string'),
  acceleration: DS.attr('string'),
  standart: DS.attr('string'),
  price: DS.attr('number'),
  description: DS.attr('string')
});