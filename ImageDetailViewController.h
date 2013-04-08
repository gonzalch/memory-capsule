//
//  ImageDetailViewController.h
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 3/27/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ViewController.h"

@interface ImageDetailViewController : ViewController
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) UIImage *selectedImage;
@end
