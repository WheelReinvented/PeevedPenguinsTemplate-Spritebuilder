//
//  Gameplay.m
//  PeevedPenguins
//
//  Created by Michal Wierzbinski on 13/07/2014.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Gameplay.h"

@implementation Gameplay

// is called when CCB file has completed loading
- (void)didLoadFromCCB {
    // tell this scene to accept touches
    self.userInteractionEnabled = TRUE;
    // load levels
    CCScene *level = [CCBReader loadAsScene:@"Levels/Level1"];
    [_levelNode addChild:level];
}

// called on every touch in this scene
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    [self launchPenguin];
}

- (void) launchPenguin
{
    CCNode *penguin = [CCBReader load:@"Penguin"];
    
    penguin.position = ccpAdd(_catapultArm.position, ccp(16, 50));
    
    [_phisicsNode addChild:penguin];
    
    CGPoint launchDirection = ccp(1, 0);
    CGPoint force = ccpMult(launchDirection, 8000);
    
    [penguin.physicsBody applyForce:force];
}

@end
