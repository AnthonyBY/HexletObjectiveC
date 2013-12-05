//
//  Cell+Mutator.m
//  Nexlet3_7
//
//  Created by Anthony Marchenko on 12/5/13.
//  Copyright (c) 2013 Anthony Marchenko. All rights reserved.
//

#import "Cell+Mutator.h"

@implementation Cell (Mutator)

-(void) mutate:(int) mutatePercent{
    
    NSMutableArray *arrayOfIndexToMutate;

    arrayOfIndexToMutate = [self uniqueRandomNumberGenerator:mutatePercent];
    
    for (int i=0; i<mutatePercent;i++){
        int number = [(NSString *)[arrayOfIndexToMutate objectAtIndex:i] intValue];
        self.DNA[number] = [self mutateToAnotherChar:[self.DNA objectAtIndex:i]];
    }
}


-(NSMutableArray *) uniqueRandomNumberGenerator:(int) mutatePercent {
    
    NSMutableArray *uniqueNumbers = [[NSMutableArray alloc] init];
    int r;
    while ([uniqueNumbers count] < mutatePercent) {
        r = arc4random()%100;
        if (![uniqueNumbers containsObject:[NSNumber numberWithInt:r]]) {
            [uniqueNumbers addObject:[NSNumber numberWithInt:r]];
        }
    }
    return uniqueNumbers;
}

-(NSString *) mutateToAnotherChar:(NSString *) oldChar{
    
    NSMutableArray *DNACodes = [[NSMutableArray alloc] initWithObjects:@"A", @"T", @"G", @"C", nil];
    
    [DNACodes removeObject:oldChar];
    
    NSUInteger randomChar = arc4random() % [DNACodes count];
    return DNACodes[randomChar];
    
}


@end
