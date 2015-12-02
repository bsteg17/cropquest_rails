var ems;

function hideColumns () {  

  if ($(window).width() < 35*ems) {
    $('.type-column').hide();
    $('.purchase_date-column').hide();
    $('.serial-column').hide();
  }
  else if ($(window).width() < 45*ems) {
    $('.type-column').show();
    $('.purchase-date-column').hide();
    $('.serial-column').hide();
  }
  else if ($(window).width() < 60*ems) {
    $('.type-column').show();
    $('.purchase-date-column').show();
    $('.serial-column').hide();
  }
  else {
    $('.type-column').show();
    $('.purchase-date-column').show();
    $('.serial-column').show();
  }
}

$(document).on('ready', function () {

  ems = parseFloat($('td.name-column').css('font-size'));

  $(window).on('resize', hideColumns);

});