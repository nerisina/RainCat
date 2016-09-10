//
//  FoodSprite.swift
//  RainCat
//
//  Created by Marc Vandehey on 8/31/16.
//  Copyright © 2016 Thirteen23. All rights reserved.
//

import SpriteKit

public class FoodSprite : SKSpriteNode {
  static let nameLabel = "FoodDish"

  public static func newInstance() -> FoodSprite {
    let foodDish = FoodSprite(imageNamed: "food_dish")
    foodDish.name = nameLabel

    foodDish.physicsBody = SKPhysicsBody(rectangleOf: foodDish.size)
    foodDish.physicsBody?.categoryBitMask = FoodCategory
    foodDish.physicsBody?.contactTestBitMask = WorldFrameCategory | RainDropCategory | CatCategory
    foodDish.zPosition = 3

    return foodDish
  }
}