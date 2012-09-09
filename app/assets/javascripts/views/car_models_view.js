Vwkonfigurator.CarModelsView = Ember.View.extend({
  templateName: 'car_models',
  carModelsBinding: 'Vwkonfigurator.carModelsController',
  refreshListing: function() {
    Vwkonfigurator.carModelsController.findAll();
  }
});
