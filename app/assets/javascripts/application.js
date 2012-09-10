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

  $('.model-chooser-link').live('mouseover', function(){

    var token = $(this).attr('token');

    var model = Vwkonfigurator.currentCarModel = Vwkonfigurator.store.find(Vwkonfigurator.CarModel, token);
    
    $('#canvas').addClass('empty');
    $('#model-image').attr('src', model.get('image'));
    $('#model-name').html(model.get('name'));
    $('#model-description').html(model.get('description'));

    var price = model.get('price');
    var price_html = '';

    if  (price > 0){
      price_html = 'Preis<sup>*</sup> ab ' +  price.toFixed(2);
    }

    $('#model-price').html(price_html);
    
  });

  $('.trim-chooser-link').live('mouseover', function(){

    var token = $(this).attr('token');

    var model = Vwkonfigurator.currentCarTrim = Vwkonfigurator.store.find(Vwkonfigurator.CarTrim, token);
    
    $('#canvas').addClass('empty');
    $('#model-image').attr('src', model.get('image'));
    $('#model-name').html(model.get('name'));
    $('#model-description').html(model.get('description'));

    var price = model.get('price');
    var price_html = '';

    if  (price > 0){
      price_html = 'Preis<sup>*</sup> ab ' +  price.toFixed(2);
    }

    $('#model-price').html(price_html);
    
  });  

});

//application globals
Vwkonfigurator.carModelsController = Vwkonfigurator.CarModelsController.create({
  loadAll: function(data) {
    this.findAll();
  },

  findAll: function() {
    this.set('content', Vwkonfigurator.store.findAll(Vwkonfigurator.CarModel));
  }
});

Vwkonfigurator.carModels = Vwkonfigurator.carModelsController.findAll();

Vwkonfigurator.hashLocation = Ember.HashLocation.create({  
});

Vwkonfigurator.currentCarModel = null;
Vwkonfigurator.currentCarTrim = null;
Vwkonfigurator.currentStep = 0;


Vwkonfigurator.hashLocation.onUpdateURL(function(url){
  var partials = url.split('/');

  Vwkonfigurator.currentStep = partials.length;

  switch(Vwkonfigurator.currentStep) {
    case 0:
      $("#form").load('/model');
    break;

    case 1:
      var car_model = Vwkonfigurator.currentCarModel;
      $('#form').load('/trim/' + car_model.get('token'));
    break;

    case 2:
      var car_trim = Vwkonfigurator.currentCarTrim;
      $('#form').load('/engine/' + car_trim.get('token'));
    break;

    case 3:
      var car_trim = Vwkonfigurator.currentCarTrim;
      $('#form').load('/color/' + car_trim.get('token'));
    break;

    case 4:
      var car_trim = Vwkonfigurator.currentCarTrim;
      $('#form').load('/option/' + car_trim.get('token'));
    break;

    case 5:
      var car_trim = Vwkonfigurator.currentCarTrim;
      $('#form').load('/total/' + car_trim.get('token'));
    break;
  }
});