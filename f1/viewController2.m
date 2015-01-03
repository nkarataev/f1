//
//  viewController2.m
//  f1
//
//  Created by Anna Karataeva on 02.01.15.
//  Copyright (c) 2015 Nikolay Karataev. All rights reserved.
//

#import "viewController2.h"

@interface viewController2 ()

@end

@implementation viewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    [_webText loadHTMLString: _thisValue baseURL:nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
