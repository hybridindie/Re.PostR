WebFontConfig = {
  google: { families: [ 'Tangerine:regular,bold' ] }
};
(function() {
  var wf = document.createElement('script');
  wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
      '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
  wf.type = 'text/javascript';
  wf.async = 'true';
  var s = document.getElementsByTagName('script')[0];
  s.parentNode.insertBefore(wf, s);
})();
function cleanItUp(cb) {
	$(cb).colorbox.remove();
}
$(document).ready(function(){
	$("a[rel='photo']").click(function() {
		$(this).colorbox({href: this.src, transition:"fade", scrolling: false, maxHeight: "90%", maxWidth: "90%", rel:'nofollow'});
	});
});

