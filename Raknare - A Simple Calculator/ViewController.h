//
//  ViewController.h
//  Raknare - A Simple Calculator
//
//  Created by Divyagnan Kandala on 1/19/14.
//  Copyright (c) 2014 Eltaru Applications LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{add,subtract,multiply,divide} calculatorOperation;

@interface ViewController : UIViewController {
    NSString *storage;
    NSString *storageOneOld;
    NSString *storageTwoOld;
    NSString *interm;
    calculatorOperation operation;
}
@property (weak, nonatomic) IBOutlet UILabel *storageOne;
@property (weak, nonatomic) IBOutlet UILabel *Screen;
@property (weak, nonatomic) IBOutlet UILabel *operatorDisplay;
@property (weak, nonatomic) IBOutlet UILabel *storageTwo;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)swipeUp:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeDown:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeLeft:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)longPressToClear:(UILongPressGestureRecognizer *)sender;
- (IBAction)tapToCalc:(UITapGestureRecognizer *)sender;






@end
