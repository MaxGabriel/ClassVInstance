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
        
        
        NSDate *beforeClass = [NSDate date];
        for (int i=0; i<1000000; i++) {
            [AnObject returnInt];
        }
        NSLog(@"Class methods: Time to complete: %g",[[NSDate date] timeIntervalSinceDate:beforeClass]);
        
        
        NSDate *beforeInstance = [NSDate date];
        AnObject *obj = [[AnObject alloc] init];
        for (int i=0; i<1000000; i++) {
            [obj returnInt];
        }
        NSLog(@"Single instance: Time to complete: %g",[[NSDate date] timeIntervalSinceDate:beforeInstance]);
        
        NSDate *beforeSingleton = [NSDate date];
        for (int i=0; i<1000000; i++) {
            [[AnObject sharedObject] returnInt];
        }
        NSLog(@"Using Singleton: Time to complete: %g",[[NSDate date] timeIntervalSinceDate:beforeSingleton]);
        
        NSDate *beforeGlobal = [NSDate date];
        for (int i=0; i<1000000; i++) {
            
            [globalObject returnInt];
        }
        NSLog(@"Using Singleton: Time to complete: %g",[[NSDate date] timeIntervalSinceDate:beforeGlobal]);
        
        NSDate *beforeCFunction = [NSDate date];
        for (int i=0; i<1000000; i++) {
            returnInt();
        }
        NSLog(@"Using C function: Time to complete: %g",[[NSDate date] timeIntervalSinceDate:beforeCFunction]);
        
    }
    return 0;
}

