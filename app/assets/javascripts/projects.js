$(document).ready(function() {

  // Loop through each countdown class
  $('.countdown').each(function() {
 
    // Create new data from data attribute on element
    var countdown = new Date($(this).data('time'));

    // Create new countdown jQuery instance
    $(this).countdown({until: countdown});

  });

  $('table img').tooltip();

  // $('.disabled').tooltip();

  // $('#grid-table td').not('.disabled').tooltip();

  $('#grid-table td').not('.disabled').on("click", function(event) {

    // Artwork exists inside td
    if ($(this).find('img').length) {
      alert('Sorry, nope!');
      return false;
    }

  	var current_row_num = $(this).data("row-num");
  	var current_col_num = $(this).data("col-num");

  	var x_location_select = $('#grid_x_location');
  	var y_location_select = $('#grid_y_location');

  	x_location_select.children('option[value="' + current_col_num + '"]').prop({selected: true});
  	y_location_select.children('option[value="' + current_row_num + '"]').prop({selected: true});

  	$('.current_location').text('You selected column ' + current_col_num + ' and row ' + current_row_num);

  });

  var dropFn = function(elem) {
    elem.droppable({
      accept: '.image_container_draggable',
      drop: function(event, ui) {

        var draggable = ui.draggable,
            new_x_location = $(this).closest('td').data('col-num'),
            new_y_location = $(this).closest('td').data('row-num'),
            old_x_location = draggable.closest('td').data('col-num'),
            old_y_location = draggable.closest('td').data('row-num'),
            old_location = $('#grid-table td[data-col-num=' + old_x_location + '][data-row-num=' + old_y_location + ']'),
            new_location = $('#grid-table td[data-col-num=' + new_x_location + '][data-row-num=' + new_y_location + ']');

        $.ajax({
          url: '/projects/' + $('#grid-table').data('project-id') + '/update_grid/' + draggable.attr('id'),
          type: 'POST',
          data: {
            x: new_x_location,
            y: new_y_location
          }, success: function(data) {
            console.log('success');
            draggable.appendTo(new_location);
            draggable.css({
              position: 'absolute',
              top: new_location.position().top,
              left: new_location.position().left
            });
          }, error: function(error) {
            console.log('failure');
            draggable.css({
              position: 'absolute',
              top: old_location.position().top,
              left: old_location.position().left
            });
            alert('You need to increase the bidding SIR!!!');
          }
        });
      }
    });
  };

  $('.image_container_draggable').draggable({
    revert: 'invalid',
    containment: $('#grid-table'),
    cursor: 'move',
    stack: '.image_container_draggable',
    stop: function(event, ui) {
      dropFn($(this).closest('td'));
    }
  });


  dropFn($('#grid-table td:not(.disabled)'));


  });