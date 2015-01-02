//
//  ViewController.h
//  f1
//
//  Created by Anna Karataeva on 02.01.15.
//  Copyright (c) 2015 Nikolay Karataev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)editingWasEnd:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textFieldPNR;
- (IBAction)buttonPressed:(id)sender;



@end

