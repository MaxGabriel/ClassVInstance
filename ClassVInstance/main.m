//
//  main.m
//  ClassVInstance
//
//  Created by Maximilian Tagher on 2/26/14.
//  Copyright (c) 2014 Tagher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AnObject.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        NSDate *before = [NSDate date];
        for (int i=0; i<1000000; i++) {
            [AnObject returnInt];
        }
        NSLog(@"Class methods: Time to complete: %g",[[NSDate date] timeIntervalSinceDate:before]);
        
        
        NSDate *beforeInstance = [NSDate date];
        AnObject *obj = [[AnObject alloc] init];
        for (int i=0; i<1000000; i++) {
            [obj returnInt];
        }
        NSLog(@"Instance methods: Time to complete: %g",[[NSDate date] timeIntervalSinceDate:beforeInstance]);
        
    }
    return 0;
}

