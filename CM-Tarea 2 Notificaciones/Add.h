//
//  Add.h
//  CM-Tarea 2 Notificaciones
//
//  Created by Aleyr on 6/26/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIDropDownMenu.h"
#import "Declarations.h"

@interface Add : UIViewController<UIDropDownMenuDelegate>{
    IBOutlet UIImageView *AddImage;
    
    IBOutlet UITextField *AddName;
    IBOutlet UITextField *AddState;
}

@property int imgIndex;

@property (weak, nonatomic) IBOutlet UIImageView *AddImage;
- (IBAction)AddImageAction:(id)sender;
- (IBAction)btnLeftImageAction:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *AddName;
@property (weak, nonatomic) IBOutlet UITextField *AddState;

@property (strong, nonatomic) UIDropDownMenu *buttonMenu;

- (IBAction)btnCancelPressed:(id)sender;
- (IBAction)btnAddPressed:(id)sender;

@end
