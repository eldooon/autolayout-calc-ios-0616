//
//  FISViewController.m
//  Open-Me
//
//  Created by Joe Burgess on 3/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic) NSString *number;
@property (nonatomic) NSString *firstNumber;
@property (nonatomic) NSString *secondNumber;
@property (nonatomic) NSString *total;
@property (nonatomic) BOOL toSecond;
@property (nonatomic) BOOL addition;
@property (nonatomic) BOOL subtraction;
@property (nonatomic) BOOL multiplication;
@property (nonatomic) BOOL division;
@end


@implementation FISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.firstNumber = @"";
    self.secondNumber = @"";
    self.total = @"";
    self.toSecond = NO;
    self.addition = NO;
    self.subtraction = NO;
    self.multiplication = NO;
    self.division = NO;
}

- (void)firstOrSecond{
    
    if (self.toSecond == NO){
        self.firstNumber = [self.firstNumber stringByAppendingString:self.number];
        self.textField.text = self.firstNumber;
    }
    else if (self.secondNumber){
        self.secondNumber = [self.secondNumber stringByAppendingString:self.number];
        self.textField.text = self.secondNumber;
    }
}

- (IBAction)button1Tapped:(id)sender {
    self.number = @"1";
    [self firstOrSecond];
}
- (IBAction)button2Tapped:(id)sender {
    self.number = @"2";
    [self firstOrSecond];
}
- (IBAction)button3Tapped:(id)sender {
    self.number = @"3";
    [self firstOrSecond];
}
- (IBAction)button4Button:(id)sender {
    self.number = @"4";
    [self firstOrSecond];
}
- (IBAction)button5Tapped:(id)sender {
    self.number = @"5";
    [self firstOrSecond];
}
- (IBAction)button6Tapped:(id)sender {
    self.number = @"6";
    [self firstOrSecond];
}
- (IBAction)button7Tapped:(id)sender {
    self.number = @"7";
    [self firstOrSecond];
}
- (IBAction)button8Tapped:(id)sender {
    self.number = @"8";
    [self firstOrSecond];
}
- (IBAction)button9Tapped:(id)sender {
    self.number = @"9";
    [self firstOrSecond];
}
- (IBAction)button0Tapped:(id)sender {
    self.number = @"0";
    [self firstOrSecond];
}
- (IBAction)buttonDotTapped:(id)sender {
    self.number = @".";
    [self firstOrSecond];
}
- (IBAction)buttonDivTapped:(id)sender {
    self.division = YES;
    [self toSecondNumber];
}
- (IBAction)buttonMultTapped:(id)sender {
    self.multiplication = YES;
    [self toSecondNumber];
}
- (IBAction)buttonMinusTapped:(id)sender {
    self.subtraction = YES;
    [self toSecondNumber];
}
- (IBAction)buttonAddTapped:(id)sender {
    self.addition = YES;
    [self toSecondNumber];
}
- (IBAction)buttonEqualTapped:(id)sender {
    NSInteger totalInt = 0;
    
    if (self.addition){
        totalInt = self.firstNumber.integerValue + self.secondNumber.integerValue;
    }
    
    else if (self.subtraction){
        totalInt = self.firstNumber.integerValue - self.secondNumber.integerValue;
    }
    
    else if (self.multiplication){
        totalInt = self.firstNumber.integerValue * self.secondNumber.integerValue;
    }
    
    else if (self.division){
        totalInt = self.firstNumber.integerValue / self.secondNumber.integerValue;
    }
    
    
    self.textField.text = [NSString stringWithFormat:@"%li", totalInt];
}

- (void)toSecondNumber{
    self.toSecond = YES;
    self.textField.text = @"";
}
@end
