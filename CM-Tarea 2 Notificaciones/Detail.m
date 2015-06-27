//
//  Detail.m
//  CM-Tarea 2 Notificaciones
//
//  Created by Yosemite retail on 6/23/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "Detail.h"
#import "Declarations.h"

@interface Detail ()

@end

@implementation Detail

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initController {
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone
                            target:self
                            action:@selector(closeThisView:)];
    
    UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:maGovernors[1]];
    item.rightBarButtonItem = backButton;
    item.hidesBackButton = YES;
    [self.navigationView pushNavigationItem:item animated:NO];
    
    self.navigationItem.rightBarButtonItem = backButton;

    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
