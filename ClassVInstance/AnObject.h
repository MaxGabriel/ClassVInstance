//
//  AnObject.h
//  ClassVInstance
//
//  Created by Maximilian Tagher on 2/26/14.
//  Copyright (c) 2014 Tagher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnObject : NSObject

extern AnObject *globalObject;

+ (instancetype)sharedObject;

- (int)returnInt;

+ (int)returnInt;

int returnInt(void);

@end
