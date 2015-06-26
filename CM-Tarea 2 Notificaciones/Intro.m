//
//  Intro.m
//  CM-Tarea 2 Notificaciones
//
//  Created by Yosemite retail on 6/24/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "Intro.h"
#import "Declarations.h"
#import "Detail.h"

@interface Intro ()

@end

@implementation Intro

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Round user image and add a white border
    self.btnIntro.layer.borderColor    = [UIColor clearColor].CGColor;
    self.btnIntro.layer.borderWidth    = 2.0;
    self.btnIntro.clipsToBounds        = YES;
    self.btnIntro.layer.cornerRadius   = 4;
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
-(void)viewWillAppear:(BOOL)animated {
    self.lblIntro.text  = maIntroTitles[self.iPageIndex];
    self.imgIntro.image = [UIImage imageNamed:maIntroImgs[self.iPageIndex]];
    if (self.iPageIndex == 2)
    {
        self.btnIntro.hidden = NO;
    }
}
//-------------------------------------------------------------------------------
- (IBAction)btnIntroPressed:(id)sender
{
    /*Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController:vc animated:YES completion:nil];
     */
    Detail *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Detail"];
    [self presentViewController:vc animated:YES completion:nil];}
@end
