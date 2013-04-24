//
//  ImageDetailViewController.h
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 3/27/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ViewController.h"
#import "CommentsViewController.h"

@protocol SendBackDelegate;

@interface ImageDetailViewController : ViewController <UITableViewDelegate>{
}
@property (strong, nonatomic) IBOutlet UIButton *deleteImageButton;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) UIImage *selectedImage;
@property (nonatomic, strong) NSString *imageName;
@property (strong, nonatomic) IBOutlet UITableView *commentsTableView;
@property (assign)  id<SendBackDelegate> ptrToDelUser;
@property (nonatomic, strong) NSString * capsuleName;

- (IBAction)addCommentButtonPressed:(id)sender;


@end

@protocol SendBackDelegate<NSObject>

@required
- (void) deleteImageAgent: (id) sender;

@end