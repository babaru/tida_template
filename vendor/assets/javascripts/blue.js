//= require bootstrap
//= require jquery.NobleCount.min
//= require bootstrap-datetimepicker
//= require bootstrap-editable

$(document).ready(function() {
  $("a[rel=popover]").popover();
  $(".tooltip").tooltip();
  $("a[rel=tooltip]").tooltip();

  $('.dropdown-toggle').dropdown();

  $('.date-time-picker').datetimepicker({
    format: 'yyyy-MM-dd hh:mm:ss'
  });

  $('.date-picker').datetimepicker({
    format: 'yyyy-MM-dd',
    pickTime: false
  });
});
