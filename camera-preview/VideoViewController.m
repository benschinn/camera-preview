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

-(void) viewWillAppear {
    [super viewDidLoad];
    
    [super viewWillAppear];
    
    self.customView1 = [[CustomView alloc] initWithFrame: self.view.bounds];
    
    [self.view setWantsLayer: YES];
    
    [self.view addSubview: self.customView1];
    
    [self initCaptureSession];
    
    [self setupPreviewLayer];
    
}

- (void) viewDidLoad {
}

-(void) initCaptureSession {
    session = [[AVCaptureSession alloc] init];
    
    if ([session canSetSessionPreset:AVCaptureSessionPresetHigh])
        [session setSessionPreset: AVCaptureSessionPresetHigh];
    
    AVCaptureDevice *device = nil;
    AVCaptureDeviceInput *device_input = nil;
    
    //find camera device
    AVCaptureDeviceDiscoverySession *captureDeviceDiscoverySession = [
        AVCaptureDeviceDiscoverySession
        discoverySessionWithDeviceTypes:@[AVCaptureDeviceTypeBuiltInWideAngleCamera]
        mediaType:AVMediaTypeVideo
        position:AVCaptureDevicePositionBack
    ];
    NSArray *captureDevices = [captureDeviceDiscoverySession devices];
    //set device
    device = captureDevices[0];
    
    // start session immidiately after setting device
    [session startRunning];
    
    NSError *__error;
    device_input = [[AVCaptureDeviceInput alloc] initWithDevice: device error : &__error];
    
    if ([session canAddInput:device_input])
        [session addInput:device_input];
    
}

-(void) setupPreviewLayer {
    
    self.preview_layer = [[AVCaptureVideoPreviewLayer alloc] initWithSession : session];
    
    [self.preview_layer setVideoGravity: AVLayerVideoGravityResizeAspectFill];
    
    [self.preview_layer setFrame : self.view.bounds];
    
    [self.view.layer addSublayer: self.preview_layer];
}

-(IBAction) startPreview_click:(id)sender {
    NSLog(@"Start Preview");
    
    if (![session isRunning])
        [session startRunning];
}

-(IBAction) stopPreview_click:(id)sender {
    if([session isRunning])
        [session stopRunning];
}

-(IBAction) takePicture_click:(id)sender {
}

@end
