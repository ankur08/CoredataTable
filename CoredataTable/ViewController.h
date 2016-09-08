//
//  ViewController.h
//  CoredataTable
//
//  Created by ankur on 27/07/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;
@property (weak, nonatomic) IBOutlet UITextField *semesterField;
@property (strong, nonatomic) IBOutlet UIImageView *ImageView;

@property (weak, nonatomic) IBOutlet UILabel *labelShow;
- (IBAction)SaveBtn:(id)sender;

- (IBAction)FindBtn:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *GetImage;
- (IBAction)GetImage:(id)sender;

@end

