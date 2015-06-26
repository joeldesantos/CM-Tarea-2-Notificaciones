//
//  cellNotification.h
//  CM-Tarea 2 Notificaciones
//
//  Created by Projects Arizaga on 25/06/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cellNotification : UITableViewCell

//Objects
@property (strong, nonatomic) IBOutlet UIImageView *imgTeam;
@property (strong, nonatomic) IBOutlet UILabel *lblTeam;
@property (strong, nonatomic) IBOutlet UILabel *lblWon;
@property (strong, nonatomic) IBOutlet UILabel *lblLost;

@end
