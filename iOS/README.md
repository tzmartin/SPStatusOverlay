# Status Bar Overlay Module

## Description

This module provides a Titanium proxy view object that overlays the iOS status bar using the [MTStatusBarOverlay](https://github.com/myell0w/MTStatusBarOverlay) project.  You may have seen this UI pattern in Apps like Reeder, Evernote and Google Mobile App.

![Status Bar Overlay Example](http://img.skitch.com/20120704-epddjrx4jmtewbby6gxdd1wuf8.jpg)

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
https://twitter.com/cduhn

Terry Martin
http://twitter.com/tzmartin

## License

The MIT License

Copyright (c) 2011 Semantic Press, Inc.

Permission is hereby granted, free of charge, 
to any person obtaining a copy of this software and 
associated documentation files (the "Software"), to 
deal in the Software without restriction, including 
without limitation the rights to use, copy, modify, 
merge, publish, distribute, sublicense, and/or sell 
copies of the Software, and to permit persons to whom 
the Software is furnished to do so, 
subject to the following conditions:

The above copyright notice and this permission notice 
shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR 
ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

