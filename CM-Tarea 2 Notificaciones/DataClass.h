//
//  DataClass.h
//  CM-Tarea 2 Notificaciones
//
//  Created by Aleyr on 6/28/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataClass  : NSObject {
    
    NSMutableArray   *maGovernors;
    NSMutableArray   *maStates;
    NSMutableArray   *maImgsPoliticalParties;
}

@property(nonatomic,retain)NSMutableArray   *maGovernors;
@property(nonatomic,retain)NSMutableArray   *maStates;
@property(nonatomic,retain)NSMutableArray   *maImgsPoliticalParties;

+(DataClass*)getInstance;

@end
