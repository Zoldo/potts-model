//
//  pointsNeighbors.h
//  getneighbors
//
//  Created by Peter Weilnböck on 07.05.13.
//  Copyright (c) 2013 Peter Weilnböck. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>

@interface pointsNeighbors : NSObject

@property NSMutableArray *point;
@property NSMutableArray *neib;

@property int dimension;
@property int edgeLength;


-(void)initNeighbors;
-(void)initPoints:(int)k dimNow:(int)d;
-(void)initNeib;
-(int)getCoordinateofPoint:(int)number inDimension:(int)d;

@end
