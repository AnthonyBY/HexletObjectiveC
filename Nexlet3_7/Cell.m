//
//  Cell.m
//  Nexlet3_7
//
//  Created by Anthony Marchenko on 12/5/13.
//  Copyright (c) 2013 Anthony Marchenko. All rights reserved.
//

#define ARRAY_SIZE 100

#import "Cell.h"

@implementation Cell


-(Cell *) init{
    
    self = [super init];
    _DNA = [[NSMutableArray alloc] initWithCapacity:ARRAY_SIZE];
    
    [self generateRandomChars];
    
    return self;
}

-(int) hammingDistance:(Cell*) cell{
    
    int distanceCount = 0;
    for(int i=0; i<ARRAY_SIZE; i++){
        NSString *DNASelf = [self.DNA objectAtIndex:i];
        NSString *DNACell = [cell.DNA objectAtIndex:i];
        if ([DNASelf isEqualToString:DNACell])
            distanceCount++;
    }
    return distanceCount;
}

-(void) generateRandomChars {
    
    NSArray *DNACodes = [[NSArray alloc] initWithObjects:@"A", @"T", @"G", @"C", nil];
    
    for (int i=0; i<ARRAY_SIZE; i++) {
        NSUInteger randomChar = arc4random() % [DNACodes count];
        [_DNA setObject:DNACodes[randomChar] atIndexedSubscript:i];
    }
}

@end
