//
//  Add.m
//  CM-Tarea 2 Notificaciones
//
//  Created by Aleyr on 6/26/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "Add.h"
#import "Home.h"

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
    self.imgIndex = 0;
    
    self.AddImage.image = [UIImage imageNamed:maImgsPoliticalPartiesList[self.imgIndex]];
    self.AddImage.frame = CGRectMake(62, 82, 197, 197);
    self.AddName.text  = @"";
    self.AddState.text  = @"";
    self.AddState.accessibilityValue  = @"Selecciona";
    
    self.buttonMenu = [[UIDropDownMenu alloc] initWithIdentifier:@"buttonMenu"];
    self.buttonMenu.ScaleToFitParent = FALSE;
    self.buttonMenu.menuWidth = 200;
    self.buttonMenu.titleArray = maStatesList;
    self.buttonMenu.valueArray = maStatesList;
    [self.buttonMenu makeMenu:AddState targetView:self.view];
    self.buttonMenu.delegate = self;
}

- (void) DropDownMenuDidChange:(NSString *)identifier :(NSString *)ReturnValue{
    /*
     --- DropDownMenuDidChange will be triggered by the Drop Down Menu when an item has been selected. Ensure that <UIDropDownMenuDelegate> is included in the header file.
     --- (NSString *)identifier returns the value specified with initWithIdentifier.
     --- (NSString *)ReturnValue returns the selected item from the valueArray.
     */

    self.AddState.text = ReturnValue;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}
/**********************************************************************************************/
#pragma mark - Buttons methods
/**********************************************************************************************/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)AddImageAction:(id)sender {
    self.imgIndex++;
    
    if (self.imgIndex >= maImgsPoliticalPartiesList.count) {
        self.imgIndex = 0;
    }
    
    self.AddImage.image = [UIImage imageNamed:maImgsPoliticalPartiesList[self.imgIndex]];
    self.AddImage.frame = CGRectMake(62, 82, 197, 197);
}

- (IBAction)btnCancelPressed:(id)sender {
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)btnAddPressed:(id)sender {
    
    [maGovernors insertObject:self.AddName.text atIndex:0];
    [maImgsPoliticalParties insertObject:maImgsPoliticalPartiesList[self.imgIndex] atIndex:0];
    [maStates insertObject:self.AddState.text atIndex:0];
    
    //NSLog(@"Added", self.AddName.text);
    
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    
    [self presentViewController:vc animated:YES completion:^{
        //this code here will execute when modal is done being dismissed
        [vc.tblMain reloadData];
    }];
}

@end
