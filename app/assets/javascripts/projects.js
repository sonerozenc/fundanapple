$(document).ready(function() {

  // Loop through each countdown class
  $('.countdown').each(function() {
 
    // Create new data from data attribute on element
    var countdown = new Date($(this).data('time'));

    // Create new countdown jQuery instance
    $(this).countdown({until: countdown});

  });

  $('table img').tooltip();

  $('.image-grid').tooltip();

  $('.image-grid').on("click", function(event){

  	var current_row_num = $(this).data("row-num");
  	var current_col_num = $(this).data("col-num");

  	var x_location_select = $('#grid_x_location');
  	var y_location_select = $('#grid_y_location');

  	x_location_select.children('option[value="' + current_col_num + '"]').prop({selected: true});
  	y_location_select.children('option[value="' + current_row_num + '"]').prop({selected: true});

  	$('.current_location').text('You selected column ' + current_col_num + ' and row ' + current_row_num);

  });
});