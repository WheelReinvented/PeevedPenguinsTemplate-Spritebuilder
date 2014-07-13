//
//  Gameplay.h
//  PeevedPenguins
//
//  Created by Michal Wierzbinski on 13/07/2014.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"

@interface Gameplay : CCNode
{
    CCPhysicsNode *_phisicsNode;
    CCNode *_catapultArm;
    CCNode *_levelNode;
}

@end