//
//  Detail.m
//  CM-Tarea 2 Notificaciones
//
//  Created by Yosemite retail on 6/23/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "Detail.h"
#import "Declarations.h"
#import "Home.h"
#import "DataClass.h"

@interface Detail ()

@end

@implementation Detail

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initController {
    DataClass *data=[DataClass getInstance];
    self.name.text = data.maGovernors[mGovernorIndex];
    self.state.text = data.maStates[mGovernorIndex];
    self.politicalParty.image = [UIImage imageNamed:data.maImgsPoliticalParties[mGovernorIndex]];
    self.politicalParty.frame = CGRectMake(62, 82, 197, 197);
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnDone:(id)sender {
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)btnNavDone:(id)sender {
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
