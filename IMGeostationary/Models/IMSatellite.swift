//
//  Satellite.swift
//  IMGeostationary
//
//  Created by Ismael Morales on 9/12/14.
//  Copyright (c) 2014 Ismael Morales. All rights reserved.
//

import UIKit

public class IMSatellite {
   
    private var position : IMVector3D
    
    init(){
        
        self.position = IMVector3D()
    }
    
    func getPosition() -> IMVector3D{
        return self.position
    }

    func placeGeostationary (planet : IMPlanet, angle : Double )  {
        
        self.position.setX(cos(angle) * planet.getRadiusOrbitGeostationary())
        self.position.setY(sin(angle) * planet.getRadiusOrbitGeostationary())
        self.position.setZ(0.0)
    }
 
}
