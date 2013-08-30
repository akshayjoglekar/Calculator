//
//  CalculatorViewController.h
//  Calculator
//
//  Created by btm-mac on 6/25/13.
//  Copyright (c) 2013 btm-mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface CalculatorViewController : UIViewController {

    IBOutlet UILabel *display;
    BOOL userIsInTheMiddleOfTypingANumber;
    CalculatorBrain *brain;
}

- (IBAction)digitPressed:(id)sender;
- (IBAction)operationPressed:(id)sender;

@end
