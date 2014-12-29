//
//  Antenna.swift
//  IMGeostationary
//
//  Created by Ismael Morales on 9/12/14.
//  Copyright (c) 2014 Ismael Morales. All rights reserved.
//

import UIKit

class IMAntenna {
   
     var position : IMVector3D
     var acimut : Double = 0.0
     var elevation : Double = 0.0
     var angleLNB : Double = 0.0
    
    init (){
        self.position = IMVector3D()
    }
    
    func getAcimut() -> Double {
        return self.acimut
    }
    
    func getElevation() -> Double {
        return self.elevation
    }
    
    func place(p : IMPlanet, lon : Double, lat : Double) {
    
        self.position.setX(cos(lat) * cos(lon) * p.getRadiusPlanet())
        self.position.setY(cos(lat) * sin(lon) * p.getRadiusPlanet())
        self.position.setZ(sin(lat) * p.getRadiusPlanet())
        
    }
    
    
    func pointTo (s : IMSatellite){
       
        var axisPlanet =  IMVector3D(valourX: 0.0, valourY: 0.0, valourZ: 1.0)
        var verticalAntenna = self.position
        var vectorEast = axisPlanet.vectorProduct(verticalAntenna)
        var vectorNorth = verticalAntenna.vectorProduct(vectorEast)
        var directionAntennaSatellite = s.getPosition().subtraction(self.position)
        var direcctionAntennaSatelliteHorizontal = verticalAntenna.vectorProduct( directionAntennaSatellite.vectorProduct(verticalAntenna))
        
        var v1 = direcctionAntennaSatelliteHorizontal.vectorProduct(verticalAntenna).vectorProduct(direcctionAntennaSatelliteHorizontal)
        var v2 = direcctionAntennaSatelliteHorizontal.vectorProduct(axisPlanet).vectorProduct(direcctionAntennaSatelliteHorizontal)
        
        self.acimut = vectorNorth.anglev2(direcctionAntennaSatelliteHorizontal, positiveDirection: vectorEast)
        
        self.elevation = direcctionAntennaSatelliteHorizontal.anglev2(directionAntennaSatellite, positiveDirection: verticalAntenna)
        
        self.angleLNB = v1.angle(v2)
    }
 
    
    
}
