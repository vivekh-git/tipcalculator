//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Vivek Hariharan on 1/10/14.
//  Copyright (c) 2014 Yahoo! Inc. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipControl;

- (IBAction)onTapTipSegment:(id)sender;
- (void)storeDefaultSegmentValue;
@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTapTipSegment:(id)sender {
    // Did Segment value Change ?
    //NSLog(@"onTapTipSegment selected index: %d", self.defaultTipControl.selectedSegmentIndex);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultTipControl.selectedSegmentIndex forKey:@"tipCalculator_default_tip"];
    [defaults synchronize];
}

- (void)storeDefaultSegmentValue {
    //NSLog(@"storeDefaultSegmentValue");
  
}

@end
