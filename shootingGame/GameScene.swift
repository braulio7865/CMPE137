//
//  GameScene.swift
//  shootingGame
//
//  Created by Jo-Anna Marie Reyes on 10/14/16.
//  Copyright © 2016 Jo-Anna Marie Reyes. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    @IBInspectable
    var Player = SKSpriteNode(imageNamed: "rocket.png")
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        Player.position = CGPoint(x: self.size.width/12, y: self.frame.size.height/1000)
        var time = Timer.scheduledTimerWithTimeInterval(0.2, target: self, selector: Selector(shootBullets()), userInfo: nil, repeats: true)
        self.addChild(Player)

    }
    
    func shootBullets(){
        var Bullet = SKSpriteNode(imageNamed: "bullet.png")
        Bullet.zPosition = -5
        Bullet.position = CGPoint(x: Player.position.x, y: Player.position.y)
        self.addChild(Bullet)
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch: AnyObject in touches{
            let location = touch.location(in: self)
            
            
            Player.position.x = location.x
        }
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches{
            let location = touch.location(in: self)
            
            
            Player.position.x = location.x
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
