//
//  Add.m
//  CM-Tarea 2 Notificaciones
//
//  Created by Aleyr on 6/26/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "Add.h"

@interface Add ()

@end

@implementation Add
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    self.AddImage.image  = nil;
    self.AddName.text  = NSString.new;
    self.AddParty.text  = NSString.new;
    self.AddState.accessibilityValue  = NSString.new;
}
/**********************************************************************************************/
#pragma mark - Buttons methods
/**********************************************************************************************/
- (IBAction)btnBackPressed:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)AddImageAction:(id)sender {
}
@end
