//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Michael Amundsen on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
   let maxAltitude: Double
   var altitude: Double
   
   init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
      self.maxAltitude = maxAltitude
      self.altitude = 0
      super.init(name: name, weight: weight, maxSpeed: maxSpeed)
   }
   
   func takeoff() {
      if speed == 0 && altitude == 0 {
         speed = maxSpeed * 0.1
         altitude = maxAltitude * 0.1
      }
   }
   
   func land() {
      speed = 0
      altitude = 0
   }
   
   func climb() {
      guard inFlight else { return }
      
      decelerate()
      if altitude >= maxAltitude {
         altitude = maxAltitude
      } else {
         altitude += maxAltitude * 0.1
      }
   }
   
   func dive() {
      //guard inFlight else { return }
      
      if speed == 0 {
         speed += maxSpeed * 0.1
      } else {
         accelerate()
      }
      if altitude <= 0 {
         altitude = 0
      } else {
         altitude -= maxAltitude * 0.1
      }
   }
   
   func bankRight() {
      guard inFlight else { return }
      
      speed -= speed * 0.1
      if heading >= 360 {
         heading = 0 + 45
      } else {
         heading += 45
      }
   }
   
   func bankLeft() {
      guard inFlight else { return }
      
      speed -= speed * 0.1
      if heading <= 0 {
         heading = 360 - 45
      } else {
         heading -= 45
      }
   }
}

//MARK: Calculated Properties
extension Plane {
   var inFlight: Bool {
      if speed > 0 && altitude > 0 {
         return true
      }
      return false
   }
}