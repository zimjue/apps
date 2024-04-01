//
//  Model.swift
//  Erfolge
//
//  Created by Jürgen Zimmer on 04.03.24.
//

import Foundation
import SwiftData

/*@Model
class Woche {
        
    var id: UUID
    @Relationship(deleteRule: .cascade) var gedankenderwochen: [GedankenZurWoche]?
   
      
   init() {
       self.id = UUID()
       self.gedankenderwochen = []
   
   }
}
 */

@Model
 class Tag {
    var id: UUID
    var datum: Date
    var EndederWoche: Bool
     
    @Relationship(deleteRule: .cascade) var fragen: [Frage]?
      
     init(datum: Date, EndederWoche: Bool ) {
        self.id = UUID()
        self.datum = datum
        self.EndederWoche = EndederWoche
        self.fragen = []
  
           }
}

@Model
class Frage {
    
    var id: UUID
    var frage: String
    var antwort: String
    var sort: Int
    
    init(frage: String, antwort: String, sort: Int) {
       id = UUID()
       self.frage = frage
       self.antwort = antwort
       self.sort = sort
       
   }
}

/*
@Model
class GedankenZurWoche {
    var gedanken: String
    var zitat: String
    
    init(gedanken: String, zitat:String) {
        self.gedanken = gedanken
        self.zitat = zitat
    }
}
 */

/*@Model
class Text {
    var id: UUID
    var zitate: String
    var ueberschrifte: String
    var texte: String
    var sort: Int
    
    
    init(gedanken: String, zitat:String) {
        self.zitat = zitat
        self.ueberschriften = ueberschriften
    }
}
*/
