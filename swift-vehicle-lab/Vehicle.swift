//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Michael Amundsen on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
   let name: String
   let weight: Double
   let maxSpeed: Double
   var speed = 0.0
   var heading = 0.0
   
   init(name: String, weight: Double, maxSpeed: Double) {
      self.name = name
      self.weight = weight
      self.maxSpeed = maxSpeed
   }
   
   func goFast() {
      speed = maxSpeed
   }
   
   func halt() {
      speed = 0
   }
   
   func accelerate() {
      if speed < maxSpeed {
         speed += maxSpeed * 0.1
      } else {
         speed = maxSpeed
      }
   }
   
   func decelerate() {
      speed -= maxSpeed * 0.1
      if speed < 0 {
         speed = 0
      }
   }
   
   func turnRight() {
      guard speed > 0 else { return }
      speed = speed / 2
      
      if heading >= 270 {
         heading = 0
      } else {
         heading += 90
      }
   }
   
   func turnLeft() {
      guard speed > 0 else { return }
      speed = speed / 2
      
      if heading <= 0 {
         heading = 270
      } else {
         heading -= 90
      }
   }
}