//
//  Vector3D.swift
//  IMGeostationary
//
//  Created by Ismael Morales on 9/12/14.
//  Copyright (c) 2014 Ismael Morales. All rights reserved.
//

import UIKit

class IMVector3D {
   
    private let x : Double
    private let y : Double
    private let z : Double
    
    init () {
        
        x = 0.0
        y = 0.0
        z = 0.0
    
    }

    
    init(valourX : Double, valourY : Double, valourZ : Double) {
        
        self.x = valourX
        self.y = valourY
        self.z = valourZ
        
    }
    
  
    
    
    func mod() -> Double{

        return sqrt(self.x * self.x + self.y * self.y + self.z * self.z)
    }

    func subtraction (v : IMVector3D) -> IMVector3D {

        return  IMVector3D(valourX: self.x - v.x , valourY: self.y - v.y, valourZ: self.z - v.z)
        
    }
    

    func vectorProduct (v : IMVector3D) -> IMVector3D{
        
        return  IMVector3D(valourX: self.y * v.z - self.z * v.y , valourY: self.z * v.x - self.x * v.z , valourZ: self.x * v.y - self.y * v.x)

    }
    

    func dotProduct (v : IMVector3D) -> Double {
        
        return self.x * v.x + self.y * v.y + self.z * v.z
        
    }
    

    func angle (v : IMVector3D) -> Double {
        
        return acos(dotProduct(v) / (self.mod() * v.mod()))
        
    }
    
    func anglev2 (v : IMVector3D, positiveDirection : IMVector3D) -> Double {
        
        var angle : Double = self.angle(v)
        var auxAngle : Double = v.angle(positiveDirection)
        
        if ( auxAngle > (90 * M_PI / 180.0)){
            angle = -angle
        }
        
        return angle
    }
    
    
}
