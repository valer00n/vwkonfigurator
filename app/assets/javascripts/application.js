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
});

//application globals
Vwkonfigurator.carModelsController = Vwkonfigurator.CarModelsController.create();
Vwkonfigurator.carModels = Vwkonfigurator.store.findAll(Vwkonfigurator.CarModel);