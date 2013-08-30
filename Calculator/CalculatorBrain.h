//
//  CalculatorBrain.h
//  Calculator
//
//  Created by btm-mac on 6/25/13.
//  Copyright (c) 2013 btm-mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject {
    double operand;
}

- (void) setOperand:(double)anOperand;
- (double) performOperation:(NSString *)operation;
- (void)performWaitingOperation;
@end
