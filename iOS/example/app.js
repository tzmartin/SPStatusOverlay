var win = Ti.UI.createWindow({
	backgroundColor: '#222222',
	orientationModes: [
	    Titanium.UI.PORTRAIT,
	    Titanium.UI.UPSIDE_PORTRAIT,
	    Titanium.UI.LANDSCAPE_LEFT,
	    Titanium.UI.LANDSCAPE_RIGHT
	]
});

var overlay = require('com.semanticpress.statusbaroverlay');
Ti.API.info("module is => " + overlay);

var overlayView = overlay.overlayView;

var label = Ti.UI.createLabel({
	text:"Hello world",
	font:{fontSize:12},
	textAlign:"center"
});

overlayView.add(label);

var fadeOverlayButton = Ti.UI.createButton({
	title:"Fade Overlay In",
	top: 20,
	height:40,
	left:20,
	right:20
});
fadeOverlayButton.addEventListener('click', function() {
	if (!overlayView.visible) {
		Ti.API.info("overlayView not visible.  Showing it.");
		overlayView.show({
			'animation':'fade'
		});
		slideOverlayButton.title = "Slide Overlay Out";
		fadeOverlayButton.title = "Fade Overlay Out";
	}
	else {
		Ti.API.info("overlayView visible.  Hiding it.");
		overlayView.hide({
			'animation':'fade'
		});
		slideOverlayButton.title = "Slide Overlay In";
		fadeOverlayButton.title = "Fade Overlay In";
	}
});
win.add(fadeOverlayButton);

var slideOverlayButton = Ti.UI.createButton({
	title:"Slide Overlay In",
	top: 80,
	height:40,
	left:20,
	right:20
});
slideOverlayButton.addEventListener('click', function() {
	if (!overlayView.visible) {
		Ti.API.info("overlayView not visible.  Showing it.");
		overlayView.show({
			'animation':'slide'
		});
		fadeOverlayButton.title = "Fade Overlay Out";
		slideOverlayButton.title = "Slide Overlay Out";
	}
	else {
		Ti.API.info("overlayView visible.  Hiding it.");
		overlayView.hide({
			'animation':'slide'
		});
		fadeOverlayButton.title = "Fade Overlay In";
		slideOverlayButton.title = "Slide Overlay In";
	}
});
win.add(slideOverlayButton);



var statusBarHidden = false;
var showHideStatusBarButton = Ti.UI.createButton({
	title:"Hide Status Bar",
	top:140,
	height:40,
	left:20,
	right:20
});
showHideStatusBarButton.addEventListener('click', function() {
	if (statusBarHidden) {
		Ti.UI.iPhone.showStatusBar();
		showHideStatusBarButton.title = "Hide Status Bar";
		statusBarHidden = false;
	}
	else {
		Ti.UI.iPhone.hideStatusBar();
		showHideStatusBarButton.title = "Show Status Bar";
		statusBarHidden = true;
	}
});
win.add(showHideStatusBarButton);

win.open();
