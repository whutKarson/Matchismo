//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Karson on 05/04/2017.
//  Copyright © 2017 Karson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

//desinated inintializer
-(instancetype)initWithCardCount:(NSUInteger) count usingDeck:(Deck *) deck;

-(Card *)chooseCardAtIndex: (NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property(nonatomic,readonly) NSUInteger score;

@end
