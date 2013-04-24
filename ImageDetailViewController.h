//
//  ImageDetailViewController.h
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 3/27/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ViewController.h"

@protocol SendBackDelegate;

@interface ImageDetailViewController : ViewController
@property (strong, nonatomic) IBOutlet UIButton *deleteImageButton;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) UIImage *selectedImage;
@property (nonatomic, strong) NSString *imageName;
@property (assign)  id<SendBackDelegate> ptrToDelUser;
@end

@protocol SendBackDelegate<NSObject>

@required
- (void) deleteImageAgent: (id) sender;

@end