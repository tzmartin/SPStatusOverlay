//
//  ComSemanticpressStatusbaroverlayOverlayViewProxy.h
//  statusbaroverlay
//
//  Created by Curtis Duhn on 11/22/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "TiViewProxy.h"

@interface ComSemanticpressStatusbaroverlayOverlayViewProxy : TiViewProxy

// Public Javascript properties
- (id)visible;

// Public Javascript methods:

// show method takes an optional object with an "animation" property
// set to "slide", "fade", or "none"
-(void)show:(id)args;

// hide method takes an optional object with an "animation" property
// set to "slide", "fade", or "none"
-(void)hide:(id)args;

@end
