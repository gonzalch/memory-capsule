//
//  CreateCapsuleViewController.h
//  MemoryCapsule
//
//  Created by Chris Gonzalez on 3/26/13.
//  Copyright (c) 2013 teambrown. All rights reserved.
//

#import "ViewController.h"

@interface CreateCapsuleViewController : ViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *capsuleName;
@property (strong, nonatomic) IBOutlet UIButton *createButton;

@end
