//
//  PlayingCard.m
//  Matchismo
//
//  Created by Karson on 29/03/2017.
//  Copyright © 2017 Karson. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;


-(int)match: (NSArray *) otherCards
{
    
    int score = 0;
    
    if([otherCards count] == 1){
        
        PlayingCard *otherCard = [otherCards firstObject];
        if(self.rank == otherCard.rank){
            score = 4;
        }else if([self.suit isEqualToString: otherCard.suit]){
            score = 1;
        }
    }
    
    return score;
}

-(NSString *)contents
{
    NSArray * rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
    
}

-(NSString *)suit
{
    return _suit ? _suit : @"?";
}

-(void)setSuit:(NSString *)suit
{
    if( [[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}

+(NSArray *) rankStrings
{
        return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

-(void)setRank:(NSUInteger)rank
{
    if(rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}


+(NSUInteger)maxRank
{
    return ([[PlayingCard rankStrings] count] - 1);
}

+(NSArray *)validSuits
{
    return @[@"♠︎",@"♣︎",@"♥︎",@"♦︎"];
}

@end
