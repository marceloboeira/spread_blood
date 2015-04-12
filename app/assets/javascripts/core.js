//= require jquery/jquery
//= require jquery-ui
//= require bootstrap/bootstrap
//= require moment/moment
//= require moment/locale/pt-br
//= require_self

$.widget.bridge('uitooltip', $.ui.tooltip);
$.widget.bridge('uibutton', $.ui.button);

$(function() {

  /**
   * SpreadBlood Front-end Core
   * @type {Object}
   */
  var SpreadBlood = {
    CSRF: $('meta[name=csrf-token]').attr('content'),

    /**
     * Booting up front-end core
     * @return {Function}
     */
    init: function() {
      this._momentInit();
      this._tooltipInit();
    },

    /**
     * MomentJS Locale and live update settings
     * @return {Function}
     */
    _momentInit: function() {
      moment.locale(SpreadBlood.locale);
      SpreadBlood._momentUpdate();
      setInterval(SpreadBlood._momentUpdate, 60000);
    },

    /**
     * MomentJS Live update on date/time inputs
     * @return {Function}
     */
    _momentUpdate: function(){
      $("date, time").each(function(i, e) {
        var d = moment.unix($(e).data("source"));
        $(e).html(d.fromNow());
      });
    },

    /**
     * Bootstrap tooltip ini
     * @return {function}
     */
    _tooltipInit: function() {
      $("[title]").tooltip();
    }
  };

  // Booting up core
  SpreadBlood.init();
});

$('html').append('<i class="fa fa-spinner fa-pulse loading"></i> <i class="fa fa-tint loading-tint-icon"></i>');

$(window).load(function() {

  $('.quantity-view h4').text($('[type="range"]').val() + ' ml');

  setTimeout(function(){
   $('body').css({'display':'block'});
   $('.loading, .loading-tint-icon').remove();
  }, 150);

  setTimeout(function(){
    $('#flash-messages .panel')
              .removeClass('animated bounceInUp')
              .addClass('animated bounceOutDown');
        setTimeout(function(){ $('#flash-messages').remove(); },1000)
  },5000);

$( ".datepicker" ).datepicker({
  dateFormat: "dd/mm/yy"
});
});

$(document).on('change','[type="range"]', function(){
  $('.quantity-view h4').text($(this).val() + ' ml');
});
