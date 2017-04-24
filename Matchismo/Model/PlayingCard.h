//
//  PlayingCard.h
//  Matchismo
//
//  Created by Karson on 29/03/2017.
//  Copyright © 2017 Karson. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (weak,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger) maxRank;

@end
