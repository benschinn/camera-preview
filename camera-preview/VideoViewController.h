//
//  VideoViewController.h
//  camera-preview
//
//  Created by Ben Schinn on 7/10/20.
//  Copyright © 2020 Ben Schinn. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AVFoundation/AVFoundation.h>
#import "CustomView.h"

NS_ASSUME_NONNULL_BEGIN

@interface VideoViewController : NSViewController

@property (nonatomic, retain) CustomView *customView1;
@property (nonatomic, retain) IBOutlet NSButton *startPreviewButton;
@property (nonatomic, retain) IBOutlet NSButton *stopPreviewButton;
@property (nonatomic, retain) IBOutlet NSButton *takePictureButton;

@property (nonatomic, retain) IBOutlet NSImageView *imageView1;

-(IBAction) startPreview_click : (id) sender;
-(IBAction) stopPreview_click : (id) sender;
-(IBAction) takePicture_click : (id) sender;

@end

NS_ASSUME_NONNULL_END
