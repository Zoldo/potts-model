//
//  AppDelegate.m
//  potts-model
//
//  Created by Peter Weilnböck on 13.08.15.
//  Copyright (c) 2015 peter.weilnboeck. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSLog(@"Application started");
    
    _nStates = 2;
    _dimension = 3;
    _edgelLength = 8;
    _neighborfield = [[pointsNeighbors alloc] init];
    [_neighborfield setDimension:_dimension];
    [_neighborfield setEdgeLength:_edgelLength];
    [_neighborfield initNeighbors];
    [_neighborfield initPoints:_edgelLength dimNow:_dimension];
    [_neighborfield initNeib];
    _nequi = 500;
    _nmess = 200;
    _nskip = 10;
    
    NSString *URL = [NSString stringWithFormat:@"/Volumes/Macintosh HD/Users2/peterweilnbock/Documents/UNI/Semester7/COP/Potts-Modell/Pottsdata_dim=%d_el=%d_n=%d.txt", _dimension, _edgelLength, _nStates];
    NSError *writeError;
    NSMutableString *writeString = [[NSMutableString alloc] init];
    [writeString appendString:@"Potts Modell \n"];
    BOOL writeOK;
    
    writeOK = [writeString writeToFile:URL atomically:YES encoding:NSASCIIStringEncoding error:&writeError];
    NSLog(@"Finished");
    [[NSApplication sharedApplication] terminate:nil];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    NSLog(@"Application closing");
}

@end
