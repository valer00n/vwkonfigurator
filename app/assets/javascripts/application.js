// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require handlebar-static
//= require ember-static
//= require ember-data
//= require app
//= require ./store
//= require_tree ./models
//= require_tree ./controllers
//= require_tree ./views
//= require_tree ./helpers
//= require_tree ./templates
//= require_tree ./routes
//= require_self


$(document).ready(function(){
  $("#debug_button").click(function(){
    $(".container_16").toggleClass('lined');
  });

  $("#form").load('/model');

});

//application globals
Vwkonfigurator.carModelsController = Vwkonfigurator.CarModelsController.create();
Vwkonfigurator.carModels = Vwkonfigurator.store.findAll(Vwkonfigurator.CarModel);

Vwkonfigurator.hashLocation = Ember.HashLocation.create({  
});

Vwkonfigurator.currentCarModel = null;
Vwkonfigurator.currentCarTrim = null;

Vwkonfigurator.hashLocation.onUpdateURL(function(url){
  var partials = url.split('/');
  switch(partials.length) {
    case 0:
      var car_model = Vwkonfigurator.currentCarModel = Vwkonfigurator.store.find(Vwkonfigurator.CarModel, {'url' : partials[0]});
      $('#form').load('/model/' + model.token);
    break;

    case 1:
      var car_trim = Vwkonfigurator.currentCarTrim = Vwkonfigurator.store.find(Vwkonfigurator.CarTrim, {'url' : partials[1]});     $('#form').load('/trim' + model.token);
    break;

    case 2:
      var car_trim = Vwkonfigurator.currentCarTrim;
      $('#form').load('/engine');
    break;

    case 3:
      var car_trim = Vwkonfigurator.currentCarTrim;
      $('#form').load('/color');
    break;

    case 4:
      var car_trim = Vwkonfigurator.currentCarTrim;
      $('#form').load('/option');
    break;
  }
});