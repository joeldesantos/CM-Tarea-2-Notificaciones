//
//  Intro.h
//  CM-Tarea 2 Notificaciones
//
//  Created by Yosemite retail on 6/24/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Intro : UIViewController

//Objects
@property NSUInteger                                iPageIndex;
@property (strong, nonatomic) IBOutlet UIImageView  *imgIntro;
@property (strong, nonatomic) IBOutlet UILabel      *lblIntro;
@property (strong, nonatomic) IBOutlet UIButton *btnIntro;

//Actions
- (IBAction)btnIntroPressed:(id)sender;


@end