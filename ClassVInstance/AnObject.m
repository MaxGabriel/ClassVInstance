//
//  AnObject.m
//  ClassVInstance
//
//  Created by Maximilian Tagher on 2/26/14.
//  Copyright (c) 2014 Tagher. All rights reserved.
//

#import "AnObject.h"

@implementation AnObject

AnObject *globalObject = nil;

+ (void)load
{
    globalObject = [[AnObject alloc] init];
}

+ (instancetype)sharedObject
{
    static AnObject *object;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        object = [[AnObject alloc] init];
    });
    return object;
}

- (int)returnInt
{
    return 7;
}

+ (int)returnInt
{
    return 7;
}

int returnInt(void)
{
    return 7;
}

@end
