//
//  FISHellaDetailViewController.m
//  HellaCells
//
//  Created by Ehsan Zaman on 6/28/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaDetailViewController.h"
@interface FISHellaDetailViewController ()
@end

@implementation FISHellaDetailViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.numberLabel.text = [NSString stringWithFormat:@"%lu", self.number];
    
}


@end
