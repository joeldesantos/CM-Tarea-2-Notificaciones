//
//  CellNotification.h
//  CM-Tarea 2 Notificaciones
//
//  Created by Projects Arizaga on 25/06/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellNotification : UITableViewCell

//Objects
@property (strong, nonatomic) IBOutlet UIImageView *imgPoliticalParty;
@property (strong, nonatomic) IBOutlet UILabel *lblGovernor;
@property (strong, nonatomic) IBOutlet UILabel *lblState;

@end
