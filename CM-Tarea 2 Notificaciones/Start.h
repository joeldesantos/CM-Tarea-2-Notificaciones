//
//  ViewController.h
//  CM-Tarea 2 Notificaciones
//
//  Created by Aleyr on 6/21/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Start : UIViewController<UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end

