//
//  Home.h
//  CM-Tarea 2 Notificaciones
//
//  Created by Projects Arizaga on 25/06/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tblMain;
- (IBAction)btnAdd:(id)sender;
- (IBAction)btnRefresh:(id)sender;

@end
