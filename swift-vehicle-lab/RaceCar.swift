//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Michael Amundsen on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
   let driver: String
   var sponsors: [String]
   
   init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
      self.driver = driver
      self.sponsors = sponsors
      super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
   }
   
   override func accelerate() {
      if speed >= maxSpeed {
         speed = maxSpeed
      } else {
         speed += maxSpeed * 0.2
      }
   }
   
   override func decelerate() {
      speed -= maxSpeed * 0.2
      if speed < 0 {
         speed = 0
      }
   }
   
   func driftRight() {
      guard speed > 0 else { return }
      speed = speed * 0.75
      
      if heading >= 270 {
         heading = 0
      } else {
         heading += 90
      }
   }
   
   func driftLeft() {
      guard speed > 0 else { return }
      speed = speed * 0.75
      
      if heading <= 0 {
         heading = 270
      } else {
         heading -= 90
      }

   }
   
}