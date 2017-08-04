//
//  ViewController.m
//  TipCalculator
//
//  Created by Tye Blackie on 2017-08-04.
//  Copyright © 2017 Tye Blackie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UIButton *calculateTip;
@property (weak, nonatomic) IBOutlet UITextField *tipPercantage;
@property (weak, nonatomic) IBOutlet UILabel *tipAmount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)calculateTip:(id)sender {
    float billAmount = [self.billAmountTextField.text floatValue];
    float tipAmount = billAmount * [[NSString stringWithFormat:@".%@", self.tipPercantage.text] floatValue];
    self.tipAmount.text = [NSString stringWithFormat:@"%.2f", tipAmount];
}


@end
