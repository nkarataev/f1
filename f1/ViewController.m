//
//  ViewController.m
//  f1
//
//  Created by Anna Karataeva on 02.01.15.
//  Copyright (c) 2015 Nikolay Karataev. All rights reserved.
// CHANGED

#import "ViewController.h"
#import "viewController2.h"

@interface ViewController ()

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

- (IBAction)editingWasEnd:(id)sender {

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"set2"]){
        viewController2 *sv = [segue destinationViewController];
        sv.thisValue = self.textFieldPNR.text;
        
    }
}

- (IBAction)buttonPressed:(id)sender {
    [self.textFieldPNR resignFirstResponder];
    
}
@end
