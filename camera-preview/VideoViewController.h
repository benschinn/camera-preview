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

@interface VideoViewController : NSViewController {
    AVCaptureSession *session;
    AVCaptureConnection *video_connection;
    AVCapturePhotoOutput *still_image_output;
}

@property (nonatomic, retain) AVCaptureVideoPreviewLayer *preview_layer;

@property (nonatomic, retain) CustomView *customView1;

@property (nonatomic, retain) IBOutlet NSImageView *imageView1;

-(void) initCaptureSession;
-(void) setupPreviewLayer;

@end

NS_ASSUME_NONNULL_END
