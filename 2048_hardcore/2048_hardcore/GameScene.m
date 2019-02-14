//
//  GameScene.m
//  2048_hardcore
//
//  Created by Gueorgui Milouchev on 2/1/19.
//  Copyright © 2019 Gueorgui Milouchev. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene {
  //  SKShapeNode *_spinnyNode;
    SKShapeNode *_spawnerBlock;
    SKLabelNode *_label;
    SKLabelNode *_spawnerLabel;
    CFTimeInterval *_time;
    int *_timeLeft;
    
}

- (void)didMoveToView:(SKView *)view {
    // Setup your scene here
    
    // Get label node from scene and store it for use later
    _label = (SKLabelNode *)[self childNodeWithName:@"//timerLabel"];
    
    _label.alpha = 0.0;
    _label.text = @"Time till next block = 5";
    [_label runAction:[SKAction fadeInWithDuration:2.0]];
    
    
    CGFloat w = (self.size.width + self.size.height) * 0.05;
    
    // Create shape node to spawn 2048 blocks
    _spawnerBlock = [SKShapeNode shapeNodeWithRectOfSize:CGSizeMake(w, w) cornerRadius:w * 0.3];
    _spawnerBlock.lineWidth = 2.5;
   // _spinnyNode = [SKShapeNode shapeNodeWithRectOfSize:CGSizeMake(w, w) cornerRadius:w * 0.3];
   // _spinnyNode.lineWidth = 2.5;
    
  //  [_spinnyNode runAction:[SKAction repeatActionForever:[SKAction rotateByAngle:M_PI duration:1]]];
  //  [_spinnyNode runAction:[SKAction sequence:@[
  //                                              [SKAction waitForDuration:0.5],
   //                                             [SKAction fadeOutWithDuration:0.5],
 //                                               [SKAction removeFromParent],
   //                                             ]]];
}


- (void)touchDownAtPoint:(CGPoint)pos {
    //SKShapeNode *n = [_spinnyNode copy];
   // n.position = pos;
   // n.strokeColor = [SKColor greenColor];
   // [self addChild:n];
}

- (void)touchMovedToPoint:(CGPoint)pos {
    //SKShapeNode *n = [_spinnyNode copy];
   // n.position = pos;
   // n.strokeColor = [SKColor blueColor];
   // [self addChild:n];
}

- (void)touchUpAtPoint:(CGPoint)pos {
   // SKShapeNode *n = [_spinnyNode copy];
   // n.position = pos;
  //  n.strokeColor = [SKColor redColor];
  //  [self addChild:n];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // Run 'Pulse' action from 'Actions.sks'
    [_label runAction:[SKAction actionNamed:@"Pulse"] withKey:@"fadeInOut"];
    
    for (UITouch *t in touches) {[self touchDownAtPoint:[t locationInNode:self]];}
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    for (UITouch *t in touches) {[self touchMovedToPoint:[t locationInNode:self]];}
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *t in touches) {[self touchUpAtPoint:[t locationInNode:self]];}
}
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *t in touches) {[self touchUpAtPoint:[t locationInNode:self]];}
}


-(void)update:(CFTimeInterval)currentTime {
    //CFTimeInterval diff = &currentTime - _time;
   // NSString *msg = @"";
  //  msg = [NSString stringWithFormat: @"Time left until next block = %f", diff];
    //_label.text = @"Time left until next block = %f", _timeLeft--;
    
    
  //  _time = &currentTime;
    
    // Called before each frame is rendered
}

@end
