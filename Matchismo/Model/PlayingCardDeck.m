//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Karson on 29/03/2017.
//  Copyright © 2017 Karson. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

-(instancetype)init
{
    self = [super init];
    
    for(NSString *suit in [PlayingCard validSuits]) {
        
        for(NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank ++){
            PlayingCard *card = [[PlayingCard alloc] init];
            card.suit= suit;
            card.rank = rank;
            [self addCard: card];
        }
    }
    
    return self;
}

@end
