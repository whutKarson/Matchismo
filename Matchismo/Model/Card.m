//
//  Card.m
//  Matchismo
//
//  Created by Karson on 29/03/2017.
//  Copyright © 2017 Karson. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)matched:(NSArray *)otherCards
{
    int score = 0;
    
    if(self.contents){
        for(Card *card in otherCards){
            if([card.contents isEqualToString:self.contents]){
                score++;
            }
        }
    }
    
    return score;
}

@end
