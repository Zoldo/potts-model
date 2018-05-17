//
//  pointsNeighbors.m
//  getneighbors
//
//  Created by Peter Weilnböck on 07.05.13.
//  Copyright (c) 2013 Peter Weilnböck. All rights reserved.
//

#import "pointsNeighbors.h"

@implementation pointsNeighbors

-(void)initNeighbors{
    _point = [[NSMutableArray alloc] init];
    _neib = [[NSMutableArray alloc] init];
}


-(void)initPoints:(int)k dimNow:(int)d{
//    if(d == _dimension){
//        [_point addObject:[NSNumber numberWithInt:k]];
//    }else{
//        for(int i=0; i<_edgeLength; i++){
//            [self initPoints:(i+k*_edgeLength) dimNow:(d+1)];
//        }
//    }
    for(int i=0; i<pow(_edgeLength, _dimension); i++){
        [_point addObject:[NSNumber numberWithInt:i ]];
    }
}

-(void)initNeib{
    for(int i=0; i< [[self point] count]; i++){
        int zw;
        zw = i;
        NSMutableArray *neibArray = [[NSMutableArray alloc] init];
        for(int j=(_dimension-1); j>=0; j--){
            int powconst = (int)pow(_edgeLength, j);
            int neibPointp = zw/powconst+1;
            int neibPointm = neibPointp-2;
            if (neibPointp == _edgeLength){
                neibPointp = 0;
            }else if(neibPointm < 0){
                neibPointm = _edgeLength-1;
            }
            neibPointp = i-((int)(zw/powconst))*powconst+neibPointp*powconst;
            neibPointm = i-((int)(zw/powconst))*powconst+neibPointm*powconst;
            [neibArray addObject:[NSNumber numberWithInt:neibPointp]];
            [neibArray addObject:[NSNumber numberWithInt:neibPointm]];
            zw = i%powconst;
        }
        [_neib addObject:neibArray];
    }
}

-(int)getCoordinateofPoint:(int)number inDimension:(int)d{
    if(d>=_dimension){
        return 0;
    }
    int coordinate = 0;
    int zw = number;
    for(int j=(_dimension-1); j>=d;j--){
        int powconst = (int)pow(_edgeLength, j);
        coordinate = zw/powconst;
        zw = number%powconst;
    }
    return coordinate;
}


@end
