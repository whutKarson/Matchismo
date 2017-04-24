//
//  Card.h
//  Matchismo
//
//  Created by Karson on 29/03/2017.
//  Copyright © 2017 Karson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *contents;
@property (nonatomic,getter=isChosen) BOOL chosen;
@property (nonatomic,getter=isMatched) BOOL matched;

-(int)matched:(NSArray *) otherCards;

@end
