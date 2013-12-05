//
//  main.m
//  Nexlet3_7
//
//  Created by Anthony Marchenko on 12/5/13.
//  Copyright (c) 2013 Anthony Marchenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"
#import "Cell+Mutator.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Cell *cellOne = [[Cell alloc] init];
        Cell *cellTwo = [[Cell alloc] init];
        
        NSLog(@"%i", [cellOne hammingDistance:cellTwo]);
        
        [cellOne mutate:30];
        [cellTwo mutate:50];
        
        NSLog(@"%i", [cellOne hammingDistance:cellTwo]);
        
        
    }
    return 0;
}

