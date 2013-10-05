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
        
        int kitten; // user input number
        int round = 1;
        int array[10];
        int i = 0; // input
        int s; // sort / output
        int tmp;
        while (round <= 10) {
            NSLog(@"Round #%i: Enter a number between 1 and 37", round);
            scanf ("%i", &kitten);
            array [round - 1] = kitten;
            round++;
        }
        i = 0;
        while ( i < 10 ) {
            s = 0;
            while (s < 10 - i) {
                if (array[s] > array[s + 1]) {
                    tmp = array[s];
                    array[s] = array[s + 1];
                    array[s + 1] = tmp;
                }
                s++;
            }
            ++i;
        }
        NSLog(@"Your list:");
         i = 0;
        while(i < 10) {
             printf("%i, ", array[i]);
             i++;
         }
        getchar();
    }
    return 0;
}