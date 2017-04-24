//
//  Deck.h
//  Matchismo
//
//  Created by Karson on 29/03/2017.
//  Copyright © 2017 Karson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void) addCard: (Card *)card atTop:(BOOL)atTop;
-(void) addCard: (Card *)card;

-(Card *)drawRandomCard;

@end
