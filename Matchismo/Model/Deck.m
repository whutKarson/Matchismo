//
//  Deck.m
//  Matchismo
//
//  Created by Karson on 29/03/2017.
//  Copyright © 2017 Karson. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong,nonatomic) NSMutableArray *cards;
@end

@implementation Deck

-(void) addCard:(Card *)card atTop:(BOOL)atTop
{
    if(!_cards){
        _cards = [[NSMutableArray alloc] init];
    }
    
    if(atTop){
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
}

-(void) addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

-(Card *)drawRandomCard
{
    Card *randCard = nil;
    
    if([self.cards count]){
        unsigned index = arc4random() % [self.cards count];
        randCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }

    return randCard;
}

@end
