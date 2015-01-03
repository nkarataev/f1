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
    self.statusLabel.text = @"";
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
        sv.thisValue = datas;
    }
}

- (IBAction)buttonPressed:(id)sender {
    [self.textFieldPNR resignFirstResponder];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://onlineaero.ru"]
                                                    cachePolicy: NSURLRequestUseProtocolCachePolicy
                                                timeoutInterval:15.0];
    
    
    NSURLConnection *connection =[[NSURLConnection alloc] initWithRequest: request delegate: self];
    if (connection){
        self.statusLabel.text = @"Начинаем загрузку";
        receivedData = [[NSMutableData data] init];
    } else{
        self.statusLabel.text = @"Ошибка соединения";
    }

}


- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [receivedData setLength:0];
    self.statusLabel.text = @"Соединение установлено";
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [receivedData appendData:data];
    self.statusLabel.text = @"Получаем данные";
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    UIAlertView *errorAlert = [[UIAlertView alloc]
                               initWithTitle:@"Ошибка"
                               message:@"Пожалуйста, проверьте соединение с Интернетом."
                               delegate:nil
                               cancelButtonTitle:@"OK"
                               otherButtonTitles:nil];
    [errorAlert show];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    self.statusLabel.text = @"Загружено...";
    datas = [[NSString alloc] initWithData:receivedData encoding:NSWindowsCP1251StringEncoding];
    
    [self performSegueWithIdentifier:@"set2" sender: nil];
    self.statusLabel.text = @"";
}

@end
