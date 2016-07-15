//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Michael Amundsen on 7/15/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
   override func climb() {
      guard inFlight else {
         return
      }
      
      decelerate()
      if altitude >= maxAltitude {
         altitude = maxAltitude
      } else  {
         altitude += maxAltitude * 0.2
      }
   }
   
   override func dive() {
      guard inFlight else {
         return
      }
      
      accelerate()
      if altitude <= 0 {
         altitude = 0
      } else {
         altitude -= maxAltitude * 0.2
      }
   }
   
   func afterburner() {
      if inFlight && speed == maxSpeed {
         speed = maxSpeed * 2
      }
   }
}