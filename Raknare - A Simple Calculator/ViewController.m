//
//  ViewController.m
//  Raknare - A Simple Calculator
//
//  Created by Divyagnan Kandala on 1/19/14.
//  Copyright (c) 2014 Eltaru Applications LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)one:(id)sender {
    _Screen.text=[NSString stringWithFormat:@"%@1",_Screen.text];
}

- (IBAction)two:(id)sender {
    _Screen.text=[NSString stringWithFormat:@"%@2",_Screen.text];
}

- (IBAction)three:(id)sender {
    _Screen.text=[NSString stringWithFormat:@"%@3",_Screen.text];
}

- (IBAction)four:(id)sender {
    _Screen.text=[NSString stringWithFormat:@"%@4",_Screen.text];
}

- (IBAction)five:(id)sender {
    _Screen.text=[NSString stringWithFormat:@"%@5",_Screen.text];
}

- (IBAction)six:(id)sender {
    _Screen.text=[NSString stringWithFormat:@"%@6",_Screen.text];
}

- (IBAction)seven:(id)sender {
    _Screen.text=[NSString stringWithFormat:@"%@7",_Screen.text];
}

- (IBAction)eight:(id)sender {
    _Screen.text=[NSString stringWithFormat:@"%@8",_Screen.text];
}

- (IBAction)nine:(id)sender {
    _Screen.text=[NSString stringWithFormat:@"%@9",_Screen.text];
}

- (IBAction)zero:(id)sender {
    _Screen.text=[NSString stringWithFormat:@"%@0",_Screen.text];
}

- (IBAction)swipeUp:(UISwipeGestureRecognizer *)sender {
    operation = add;
    storage = _Screen.text;
    _operatorDisplay.text = @"+";
    _Screen.text=@"";
}

- (IBAction)swipeDown:(UISwipeGestureRecognizer *)sender {
    operation = subtract;
    storage = _Screen.text;
    _operatorDisplay.text = @"-";
    _Screen.text=@"";
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender {
    operation = divide;
    storage = _Screen.text;
    _operatorDisplay.text = @"x";
    _Screen.text=@"";
}

- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender {
    operation = multiply;
    storage = _Screen.text;
    _operatorDisplay.text = @"/";
    _Screen.text=@"";
}

- (IBAction)longPressToClear:(UILongPressGestureRecognizer *)sender {
    _Screen.text = @"";
    _operatorDisplay.text = @"Cleared!";
}

- (IBAction)tapToCalc:(UITapGestureRecognizer *)sender {
    NSString *val = _Screen.text;
    _operatorDisplay.text = @"=";
    switch(operation) {
        case add:
            _Screen.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[storage longLongValue]];
            break;
        case subtract:
            _Screen.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]-[val longLongValue]];
            break;
        case divide:
            _Screen.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]/[val longLongValue]];
            break;
        case multiply:
            _Screen.text= [NSString stringWithFormat:@"%qi",[val longLongValue]*[storage longLongValue]];
            break;
    }
    interm = _storageOne.text;
    _storageOne.text = val;
    _storageTwo.text = interm;
    
}

@end
