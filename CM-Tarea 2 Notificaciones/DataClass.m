//
//  DataClass.m
//  CM-Tarea 2 Notificaciones
//
//  Created by Aleyr on 6/28/15.
//  Copyright (c) 2015 CM. All rights reserved.
//

#import "DataClass.h"

@implementation DataClass
@synthesize maGovernors;
@synthesize maStates;
@synthesize maImgsPoliticalParties;

static DataClass *instance = nil;

+(DataClass *)getInstance
{
    @synchronized(self)
    {
        if(instance==nil)
        {
            instance= [DataClass new];
        }
    }
    return instance;
}

@end
