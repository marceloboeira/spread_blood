//= require jquery/jquery
//= require bootstrap/bootstrap
//= require moment/moment
//= require moment/locale/pt-br
//= require medium-editor
//= require_self

$(function() {

  /**
   * SpreadBlood Front-end Core
   * @type {Object}
   */
  var SpreadBlood = {
    version: $("#spreadblood-version").val(),
    locale: $("#spreadblood-locale").val(),
    dateFormat: "ddd, DD MMM YYYY HH:mm:ss ZZ", // RFC822 Pattern
    CSRF: $('meta[name=csrf-token]').attr('content'),

    /**
     * Booting up front-end core
     * @return {Function}
     */
    init: function() {
      this._momentInit();
      this._mediumInit();
      this._tooltipInit();
      this._bootboxInit();
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
        var d = moment.utc($(e).data("source"), SpreadBlood.dateFormat);
        $(e).html(d.fromNow());
      });
    },

    /**
     * Medium editor start
     * @return {Function}
     */
    _mediumInit: function() {
      var e = new MediumEditor('.html-editor', {
        buttonLabels: 'fontawesome',
        cleanPastedHTML: false,
        forcePlainText: false
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

$(window).load(function()
{
  setTimeout(function(){
   $('body').css({'display':'block'});
   $('.loading, .loading-tint-icon').remove();
  },150);
});
