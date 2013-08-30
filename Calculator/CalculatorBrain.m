//
//  CalculatorBrain.m
//  Calculator
//
//  Created by btm-mac on 6/25/13.
//  Copyright (c) 2013 btm-mac. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

NSString *waitingOperation;
double waitingOperand;

- (void)performWaitingOperation
{
    if([waitingOperation isEqual:@"*"]) {
        operand = waitingOperand * operand;
    } else if([waitingOperation isEqual:@"/"]) {
        if (operand)
            operand = waitingOperand / operand;
    } else if([waitingOperation isEqual:@"+"]) {
        operand = waitingOperand + operand;
    } else if([waitingOperation isEqual:@"-"]) {
        operand = waitingOperand - operand;
    }
}

- (void)setOperand:(double)anOperand
{
    operand = anOperand;
    
}

- (double)performOperation:(NSString *)operation
{
    if([operation isEqual:@"sqrt"]) {
        operand = sqrt(operand);
    } else {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
        
    }
    return operand;
}
@end
