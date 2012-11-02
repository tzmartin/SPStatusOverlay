# Status Bar Overlay Module

## Description

This module provides a Titanium proxy view object that overlays the status bar.

![Status Bar Overlay Example](https://img.skitch.com/20120704-epddjrx4jmtewbby6gxdd1wuf8.jpg)

## Accessing the statusbaroverlay Module

To access this module from JavaScript, you would do the following:

	var overlay = require("com.semanticpress.statusbaroverlay");

The overlay variable is a reference to the Module object.	

## Reference

### ___PROJECTNAMEASIDENTIFIER__.overlayView

The overlayView property of the module is a special proxy view that will overlay the status bar when shown.
The overlayView will be given a background image that matches the status bar color, as long as you're
using a normal gray or black opaque status bar.  If you show or hide the status bar, the overlay will appear or disappear along with it.

## Usage

	// Create the module
	var overlay = require("com.semanticpress.statusbaroverlay");
	
	// Add subviews to the overlay view
	overlay.overlayView.add(Ti.UI.createLabel({
		text:"Hello world",
		font:{fontSize:12},
		textAlign:"center"
	});

	// Show and hide the overlay view instantly
	overlay.overlayView.show();
	overlay.overlayView.hide();
	
	// Show and hide the overlay view with a fade animation
	overlay.overlayView.show({ 'animation':'fade' });
	overlay.overlayView.hide({ 'animation':'fade' });
	
	// Show and hide the overlay view with a slide animation
	overlay.overlayView.show({ 'animation':'slide' });
	overlay.overlayView.hide({ 'animation':'slide' });
	
## Authors

Curtis Duhn
curtis.duhn@semanticpress.com

Terry Martin
martin@semanticpress.com
http://twitter.com/tzmartin

## License

Copyright 2011 Semantic Press, Inc.
http://semanticpress.com

