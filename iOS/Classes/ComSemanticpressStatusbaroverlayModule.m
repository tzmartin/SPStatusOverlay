/**
 * Copyright (c) 2012 Semantic Press, Inc.
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "ComSemanticpressStatusbaroverlayModule.h"
#import "ComSemanticpressStatusbaroverlayOverlayViewProxy.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@interface ComSemanticpressStatusbaroverlayModule()
@property (nonatomic, retain) ComSemanticpressStatusbaroverlayOverlayViewProxy *_overlayView;
@end

@implementation ComSemanticpressStatusbaroverlayModule
@synthesize _overlayView;

#pragma mark Cleanup 

-(void)dealloc
{
    self._overlayView = nil;
	[super dealloc];
}


#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"17530cce-68cc-43ab-9f32-ad1c7b303fb2";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"com.semanticpress.statusbaroverlay";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
	[self overlayView];
	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added 
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

//-(id)showOverlay:(id)args {
//    MTStatusBarOverlay *overlay = [MTStatusBarOverlay sharedInstance];
//    overlay.animation = MTStatusBarOverlayAnimationFallDown;  // MTStatusBarOverlayAnimationShrink
//    overlay.detailViewMode = MTDetailViewModeHistory;         // enable automatic history-tracking and show in detail-view
//    overlay.delegate = self;
//    overlay.progress = 0.0;
//    [overlay postMessage:@"Following @myell0w on Twitter…"];
//    overlay.progress = 0.1;
//    // ...
//    [overlay postMessage:@"Following myell0w on Github…" animated:NO];
//    overlay.progress = 0.5;
//    // ...
//    [overlay postImmediateFinishMessage:@"Following was a good idea!" duration:2.0 animated:YES];
//    overlay.progress = 1.0;
//}

//-(id)example:(id)args
//{
//	// example method
//	return @"hello world";
//}
//
//-(id)exampleProp
//{
//	// example property getter
//	return @"hello world";
//}
//
//-(void)exampleProp:(id)value
//{
//	// example property setter
//}

- (id)overlayView {
    if (!_overlayView) {
        self._overlayView = [[[ComSemanticpressStatusbaroverlayOverlayViewProxy alloc] init] autorelease];
        [self replaceValue:_overlayView forKey:@"overlayView" notification:NO];
    }
    return _overlayView;
}

- (void)setOverlayView:(id)value {
    NSLog(@"Read only property.  Ignoring setter.");
}

@end
