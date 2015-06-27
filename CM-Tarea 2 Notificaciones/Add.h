//
//  Add.h
//  CM-Tarea 2 Notificaciones
//
//  Created by Aleyr on 6/26/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIDropDownMenu.h"

@interface Add : UIViewController<UIDropDownMenuDelegate>{
    IBOutlet UIImageView *AddImage;
    
    IBOutlet UITextField *AddName;
    IBOutlet UITextField *AddParty;
    IBOutlet UITextField *AddState;
    
    IBOutlet UIButton *AddButton;
}

@property (weak, nonatomic) IBOutlet UIImageView *AddImage;
- (IBAction)AddImageAction:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *AddName;
@property (weak, nonatomic) IBOutlet UITextField *AddParty;
@property (weak, nonatomic) IBOutlet UITextField *AddState;

@property (weak, nonatomic) IBOutlet UIButton *AddButton;

@end
