//
//  Musicians.swift
//  MusicianClass
//
//  Created by Ahmet Salih Çağlar on 13.07.2020.
//  Copyright © 2020 Salih Caglar. All rights reserved.
//

import Foundation

enum MusicianType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
    case Violenist
}

class Musicians{
    
    //Property
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianType
    
    //Initializer (Constructor) Method
    init(nameInit:String,ageInit:Int,instrumentInit:String,typeInit:MusicianType) {
        print("Musician created!")
        age = ageInit
        name  = nameInit
        instrument = instrumentInit
        type = typeInit
    }
    func sing(){
        print("Nothing else matters!")
    }
}

