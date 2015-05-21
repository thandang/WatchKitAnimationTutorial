//
//  InterfaceController.m
//  AppleWatchAnimation WatchKit Extension
//
//  Created by Dang Thanh Than on 5/21/15.
//  Copyright (c) 2015 Than Dang. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceImage *imageView;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    [self.imageView setImageNamed:@"animation-"];
    [self.imageView startAnimatingWithImagesInRange:NSMakeRange(0, 4) duration:1.0 repeatCount:-1];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



