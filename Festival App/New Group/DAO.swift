//
//  DAO.swift
//  Festival App
//
//  Created by mobapp06 on 07/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import Foundation

class DAO {
  
    
    var artistLijst = [Artist]()
    
    init() {
        //Aerosmith
        let aeroArtist = Artist.init(naam: "Aerosmith", omschrijving: "Aerosmith is een Amerikaanse rockband, die sinds de jaren zeventig is uitgegroeid tot een grote en bekende rockband. Aerosmith bestaat uit Steven Tyler, Brad Whitford, Joe Perry, Tom Hamilton en Joey Kramer.", afbeeldingart: "aerosmith.jpg")
        
        //Bob Marley
        let bobArtist = Artist.init(naam: "Bob Marley", omschrijving: "Robert Nesta Marley was een Jamaicaans reggae-artiest. Hij draagt de bijnaam The King of Reggae. Hij was een van de belangrijkste verantwoordelijken voor de doorbraak van reggae buiten Jamaica en gold tevens als belangrijk voorvechter van het rastageloof.", afbeeldingart: "Bob.jpg")
        //2Pac
        let pacArtist = Artist.init(naam: "2Pac", omschrijving: "Tupac Amaru Shakur, alias 2Pac en Makaveli, was een Amerikaanse rapper, dichter en acteur. Hij wordt door velen gezien als een van de beste en invloedrijkste rappers aller tijden. Hij is ook een van de bestverkopende rap-artiesten met meer dan 75 miljoen verkochte platen wereldwijd. ", afbeeldingart: "2pac.png")
        
        self.artistLijst += [aeroArtist, bobArtist, pacArtist]
    }
}

