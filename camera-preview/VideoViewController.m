//
//  VideoViewController.m
//  camera-preview
//
//  Created by Ben Schinn on 7/10/20.
//  Copyright © 2020 Ben Schinn. All rights reserved.
//

#import "VideoViewController.h"

@interface VideoViewController ()

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.customView1 = [[CustomView alloc] initWithFrame: self.view.bounds];
    
    [self.view setWantsLayer: YES];
    
    [self.view addSubview: self.customView1];
}

@end
