//
//  CommentsViewController.h
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 4/23/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "ImageDetailViewController.h"

@interface CommentsViewController : UIViewController <UITextViewDelegate>
@property (strong, nonatomic) IBOutlet UITextView *commentTextView;

-(void) setCapsuleValues: (NSString *) capsuleName imageID: (NSString*)ID;

-(void) linkToParentView: (ViewController *) parent;

@end
