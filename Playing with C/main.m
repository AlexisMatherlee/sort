//
//  main.m
//  Playing with C
//
//  Created by Alexis Matherlee on 10/3/13.
//  Copyright (c) 2013 Alexis Matherlee. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int number = 0;
        int round = 1;
        NSMutableArray *array = [NSMutableArray array];
        
        while (round <= 10) {
            NSLog(@"Round #%i: Enter a number between 1 and 10", round);
            scanf ("%i", &number);
            [array addObject: @(number)];
            [array sortUsingSelector: @selector(compare:)];
            NSLog(@"Your list: %@", array);
            round++;
        }
        
    }
    return 0;
}
