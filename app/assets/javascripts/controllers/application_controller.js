Vwkonfigurator.ApplicationController = Ember.Controller.extend({
  calculateRight: function(){

    var summ = 0.00;

    var engine_str = '';
    var color_str = '';
    var interior_str = '';
    var option_str = '';

    var total_str = '<h4>Gesamtpreis+ ';

    var temp_model = null;
    var token = null;

    $('.car_engine_ops').each(function(){
      if (this.checked) {
        // console.log(this);
        token = $(this).attr('value');
        temp_model = Vwkonfigurator.store.find(Vwkonfigurator.CarEngine, token)
        // console.log(temp_model.get('price'));
        summ += temp_model.get('price');
        engine_str += '<p><b>' + temp_model.get('name') + '</b> '  + '' + temp_model.get('price') + ' €</p>' ;
      }
    });

    $('.car_color_ops').each(function(){
      if (this.checked) {
        // console.log(this);
        token = $(this).attr('value');
        temp_model = Vwkonfigurator.store.find(Vwkonfigurator.CarColor, token)
        // console.log(temp_model.get('price'));
        summ += temp_model.get('price');
        color_str += '<p><b>' + temp_model.get('name') + '</b> '  + '' + temp_model.get('price') + ' €</p>' ;
      }
    });

    $('.car_interior_color_ops').each(function(){
      if (this.checked) {
        // console.log(this);
        token = $(this).attr('value');
        temp_model = Vwkonfigurator.store.find(Vwkonfigurator.CarInteriorColor, token)
        interior_str += '<p><b>' + temp_model.get('name') + '</b> ';
      }
    });

    $('.car_option_ops').each(function(){
      if (this.checked) {
        // console.log(this);
        token = $(this).attr('checked_value');
        temp_model = Vwkonfigurator.store.find(Vwkonfigurator.CarOption, token)
        // console.log(temp_model.get('price'));
        summ += temp_model.get('price');
        option_str += '<p><b>' + temp_model.get('name') + '</b> '  + '' + temp_model.get('price') + ' €</p>' ;
      }
    });


total_str += ': ' + summ + ' € </h4>';

$('#engine_str').html(engine_str);

$('#color_str').html(color_str);

$('#interior_str').html(interior_str);

$('#option_str').html(option_str);

$('#total_str').html(total_str);


  }
});
