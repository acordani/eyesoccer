//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui/widgets/datepicker
//= require_tree .

// datepicker homepage
$('#starts_at').datepicker({
	dateFormat: "dd-mm-yy"
});
	
$('#ends_at').datepicker({
	dateFormat: "dd-mm-yy"
});


// datepicker event
$('#event_starts_at').datepicker({
      dateFormat: 'dd-mm-yy'
    });
$('#event_ends_at').datepicker({
      dateFormat: 'dd-mm-yy'
    });




$('input.starts_at').datepicker();

$("#starts_at").datepicker({
			dateFormat: 'd-M-y',
			minDate:0,
			maxDate: '3m',
			onSelect: function(selected) {
				$('ends_at').datepicker("option", "minDate", selected);
				$('ends_at').attr('disabled', false);

			}
		})

		$("#ends_at").datepicker({
			dateFormat: 'd-M-y',
			minDate:0,
			maxDate: '3m',
			onSelect: function(selected) {
				$('starts_at').datepicker("option", "maxDate", selected);
				
			}
		})

