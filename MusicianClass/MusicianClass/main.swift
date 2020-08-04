//
//  main.swift
//  MusicianClass
//
//  Created by Ahmet Salih Çağlar on 13.07.2020.
//  Copyright © 2020 Salih Caglar. All rights reserved.
//

import Foundation

let salih = Musicians(nameInit: "Salih",ageInit: 16,instrumentInit: "Guitar",typeInit:.LeadGuitar)

print(salih.type)
salih.sing()

let ahmet = SuperMusician(nameInit: "Ahmet", ageInit: 16, instrumentInit: "Guitar", typeInit: .Drummer)

print(ahmet.type)
ahmet.sing()
ahmet.sing2()

