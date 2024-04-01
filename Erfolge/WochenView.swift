//
//  WochenView.swift
//  Erfolge
//
//  Created by Jürgen Zimmer on 15.03.24.
//

/*
import SwiftUI
import SwiftData

struct WochenView: View {
    @State private var hue = 0.758
    @State private var saturation = 0.736
    @State private var brightness = 0.712
    @State private var ausgewaehlteWoche = 0
   
   // @Bindable var woche: Woche
    
    @Query(sort: [SortDescriptor(\Woche.id)]) var woche: [Woche]
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        erstelleWoche()
        VStack {
            Stepper("Woche: ", value: $ausgewaehlteWoche, in : 0...13)
            Text("MEINE **GEDANKEN** ZU DIESER WOCHE:")
                .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
            
                
    }
    }
    
       func erstelleWoche() {
            for i in 0...13 {
                                  
                                
                modelContext.insert(seite)
                
                var frage = Frage(frage: "WAS HABE ICH HEUTE GELERNT?", antwort: "", sort: 0)
                modelContext.insert(frage)
                seite.fragen!.append(frage)
                
                frage = Frage(frage: "WORIN HABE ICH MICH HEUTE VERBESSERT?", antwort: "", sort: 1)
                modelContext.insert(frage)
                seite.fragen!.append(frage)
                
                frage = Frage(frage: "WORÜBER HABE ICH MICH HEUTE GEFREUT?", antwort: "", sort: 2)
                modelContext.insert(frage)
                seite.fragen!.append(frage)
                
                frage = Frage(frage: "ICH BIN HEUTE EIN GLÜCKSKIND, WEIL...,", antwort: "", sort: 3)
                modelContext.insert(frage)
                seite.fragen!.append(frage)
                
                frage = Frage(frage: "MEINE HEUTIGEN ERFOLGE:", antwort: "", sort: 4)
                modelContext.insert(frage)
                seite.fragen!.append(frage)
                
                frage = Frage(frage: "DAFÜR BIN ICH HEUTE DANKBAR", antwort: "", sort: 5)
                modelContext.insert(frage)
                seite.fragen!.append(frage)
                
                frage = Frage(frage: "DAS WAR MEIN HEUTIGER GO-MOMENT", antwort: "", sort: 6)
                modelContext.insert(frage)
                seite.fragen!.append(frage)
                }
            
        }
        
       
}
 
 /*
    gedankenderwochen.append(GedankenZurWoche(gedanken: "", zitat: "DURCH WEIDERHOLUNG FÜHREN BERKÄFTIGUNGEN ZUM GLAUBEN. UND ERST, WENN AUS DEM GLAUBEN TIEFE ÜBERZEUGUNG WIRD, WERDEN DINGE in die TAT UMGESETZT. Claude M. Bristol" ))
    gedankenderwochen.append(GedankenZurWoche(gedanken: "", zitat: "Das Leben besteht zu 10 % aus dem, was geschieht und zu 90 % aus dem, was du darus machst. Charles Swindoll" ))
    gedankenderwochen.append(GedankenZurWoche(gedanken: "", zitat: "Willst du dich am ganzen erquicken, so musst du das Ganze im KLEINSTEN erblicken. Johann Wolfgang von Goethe" ))
    gedankenderwochen.append(GedankenZurWoche(gedanken: "", zitat: "Wir sind das, was wir wiederholt tun. Daher ist Vortrefflichkeit keine Handlung, sondern eine Gewohnheit. Arstoteles" ))
    gedankenderwochen.append(GedankenZurWoche(gedanken: "", zitat: "Bringt mich das, was ich gerade tue, meinem Ziel Näher - JA oder NEIN? Damian Richter" ))
    gedankenderwochen.append(GedankenZurWoche(gedanken: "", zitat: "Leben wird ni ht an der Zahl von Atemzügen gemessen, die wir nhemen, sondern an den Momenten die uns den Atem nehmen. Maya Angelou" ))
    gedankenderwochen.append(GedankenZurWoche(gedanken: "", zitat: "der höchste Lohn für unsere Bemühungen ist nicht das, was wir dafür bekommen, siondern das , was wir dadurch werden. John Ruskin" ))
   */
 
 */
//#Preview {
  //  WochenView()
    //    .modelContainer(for: [Woche.self], inMemory: true)
//}

