//
//  ViewController.m
//  Matchismo
//
//  Created by Karson on 27/03/2017.
//  Copyright © 2017 Karson. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"
#import "CardMatchingGame.h"


@interface CardGameViewController ()
@property(nonatomic) int flipcount;
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (strong,nonatomic) Deck * deck;
@property (strong,nonatomic) NSString *randomCardContents;
@property (strong,nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;

@end

@implementation CardGameViewController

-(CardMatchingGame *)game
{
    if(!_game) _game = [[CardMatchingGame alloc] initWithCardCount:0 usingDeck: [self createDeck]];
    
    return _game;
}

-(Deck *)deck
{
    if (!_deck){
        
        _deck = [self createDeck];
    }
    
    return _deck;
}

-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

-(void) setFlipcount:(int)flipcount{
    _flipcount = flipcount;
    self.flipsLabel.text = [NSString stringWithFormat: @"Flips : %d", _flipcount];
}

- (IBAction)touchCardButton:(UIButton *)sender {

    self.flipcount++;
    NSLog(@"Flig is :%d",_flipcount);
    
}


@end
