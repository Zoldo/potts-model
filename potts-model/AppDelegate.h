//
//  AppDelegate.h
//  potts-model
//
//  Created by Peter Weilnböck on 13.08.15.
//  Copyright (c) 2015 peter.weilnboeck. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "pointsNeighbors.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property pointsNeighbors *neighborfield;
@property int dimension;
@property int edgelLength;
@property int nequi;
@property int nmess;
@property int nskip;
@property double kopplung;
@property int nStates;


@end

