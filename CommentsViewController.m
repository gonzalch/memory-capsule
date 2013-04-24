//
//  CommentsViewController.m
//  MemoryCapsule
//
//  Created by Gonzalo Parajon on 4/23/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "CommentsViewController.h"

@interface CommentsViewController (){
    PFUser * user;
    NSString * capsule, *imageID;
}

@end

@implementation CommentsViewController

@synthesize commentTextView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    
    // Set username
    user = [PFUser currentUser];
    
    return self;
}



#pragma - mark UITextViewDelegate methods
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range
 replacementText:(NSString *)text
{
    NSLog(@"return ");
    
    // Any new character added is passed in as the "text" parameter
    if ([text isEqualToString:@"\n"]) {
        // Be sure to test for equality using the "isEqualToString" message
        [textView resignFirstResponder];
        
        
        // Return FALSE so that the final '\n' character doesn't get added
        return FALSE;
    }
    
    
    // For any other character return TRUE so that the text gets added to the view
    return TRUE;
}


- (void)textViewDidEndEditing:(UITextView *)textView{
    NSLog(@"ended editing %@", capsule);
    // Save Comment
    PFObject * newComment = [PFObject objectWithClassName:@"Comments"];
    [newComment setObject:user.username forKey:@"by"];
    [newComment setObject:capsule forKey:@"capsuleName"];
    [newComment setObject:commentTextView.text forKey:@"comment"];
    [newComment setObject: imageID forKey: @"imageID"];
    [newComment save];
    
    NSLog(@"new comment %@", newComment);
    //[newComment save];
    
    //[self.view setNeedsDisplay];
    
    [self dismissViewControllerAnimated:YES completion:^{
        [self.view removeFromSuperview];
    }];
    
}


-(void) setCapsuleValues: (NSString *) capsuleName imageID: (NSString *) ID{
    capsule = capsuleName;
    imageID = ID;
}

@end
