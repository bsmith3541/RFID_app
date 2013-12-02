//
//  ViewController.m
//  RFIDapp
//
//  Created by Brandon Smith on 12/1/13.
//  Copyright (c) 2013 Brandon Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) NSTimer *timer;

@end

@implementation ViewController
int i;
float total_price;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    i = 0;
    total_price = 0.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapDetected:(id)sender {
    NSLog(@"Tap detected!");
    _statusLabel.text = @"Pinging server...";
    _statusLabel.hidden = NO;
    [_activityIndicator startAnimating];
    _timer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(update) userInfo:nil repeats:FALSE];
}

- (void)update
{
    _timer = nil;
    [_activityIndicator stopAnimating];
    _activityIndicator.hidden = YES;
    _statusLabel.text = @"New item added!";
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateText) userInfo:nil repeats:FALSE];
}

-(void)updateText
{
    i++;
    NSString *total;
    switch(i){
        case 1:
            _statusLabel.hidden = YES;
            _product1.text = @"1 x Frosted Flakes: $3.50";
            _product1.hidden = NO;
            total_price += 3.50;
            total = [NSString stringWithFormat:@"Total: $%.2f", total_price];
            _total.text = total;
            _total.hidden = NO;
            break;
        case 2:
            _statusLabel.hidden = YES;
            _product2.text = @"1 x Starbucks Frappuccino: $2.50";
            _product2.hidden = NO;
            total_price += 2.50;
            total = [NSString stringWithFormat:@"Total: $%.2f", total_price];
            _total.text = total;
            _total.hidden = NO;
            break;
        case 3:
            _statusLabel.hidden = YES;
            _product3.text = @"1 x Bai Tea: $1.50";
            _product3.hidden = NO;
            total_price += 1.50;
            total = [NSString stringWithFormat:@"Total: $%.2f", total_price];
            _total.text = total;
            _total.hidden = NO;
            break;
    }
}
@end
