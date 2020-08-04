//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Ahmet Salih Çağlar on 14.07.2020.
//  Copyright © 2020 Salih Caglar. All rights reserved.
//

import Foundation

class SuperMusician : Musicians {
    
    func sing2(){
        print("Enter Night")
    }
    override func sing() {
        super.sing()
        print("Exit Light")
    }
}
