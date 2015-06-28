//
//  Detail.h
//  CM-Tarea 2 Notificaciones
//
//  Created by Yosemite retail on 6/23/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Detail : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UIImageView *politicalParty;
@property (weak, nonatomic) IBOutlet UILabel *state;

- (IBAction)btnDone:(id)sender;
- (IBAction)btnNavDone:(id)sender;

@end
