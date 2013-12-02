//
//  ViewController.h
//  RFIDapp
//
//  Created by Brandon Smith on 12/1/13.
//  Copyright (c) 2013 Brandon Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *product1;
@property (weak, nonatomic) IBOutlet UILabel *product2;
@property (weak, nonatomic) IBOutlet UILabel *product3;
@property (weak, nonatomic) IBOutlet UILabel *total;
- (IBAction)tapDetected:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@end
