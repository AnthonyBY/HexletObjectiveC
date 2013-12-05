//
//  Cell.h
//  Nexlet3_7
//
//  Created by Anthony Marchenko on 12/5/13.
//  Copyright (c) 2013 Anthony Marchenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cell : NSObject

@property NSMutableArray * DNA;

-(int) hammingDistance: (Cell *) cell;

@end

