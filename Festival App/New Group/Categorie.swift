//
//  Categorie.swift
//  Festival App
//
//  Created by mobapp06 on 07/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import Foundation

class Categorie {
    var naam:String?
    var artistLijst: [Artist]?
    
    init(naam:String) {
        self.naam = naam
        artistLijst = [Artist].init()
    }
}
