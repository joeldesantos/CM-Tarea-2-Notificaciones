//
//  Add.h
//  CM-Tarea 2 Notificaciones
//
//  Created by Aleyr on 6/26/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Add : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *AddImage;
- (IBAction)AddImageAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *AddName;
@property (weak, nonatomic) IBOutlet UITextField *AddParty;
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *AddState;
@end
