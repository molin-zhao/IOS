//
//  CheckoutTaxChangeObserver.m
//  BasicUIDesign-project
//
//  Created by Ray on 18/06/2017.
//  Copyright © 2017 com.netease.homework. All rights reserved.
//

#import "CheckoutTaxChangeObserver.h"
#import "CartMainViewController.h"

@interface CheckoutTaxChangeObserver()

@property (strong, atomic) CartMainViewController *controller;

@end

@implementation CheckoutTaxChangeObserver


-(instancetype)initWithController:(CartMainViewController*)controller{
    self = [super init];
    if(self.controller == nil){
        self.controller = controller;
    }
    return self;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    CGFloat oldValue = [[change objectForKey:NSKeyValueChangeOldKey] floatValue];
    CGFloat newValue = [[change objectForKey:NSKeyValueChangeNewKey] floatValue];
    CGFloat diffValue = newValue - oldValue;
    NSLog(@"Δtax:%.2f",diffValue);
//    [self.controller updateTotalTax:diffValue];
}

@end