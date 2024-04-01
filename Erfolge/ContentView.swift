//
//  ContentView.swift
//  Erfolge
//
//  Created by Jürgen Zimmer on 22.02.24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var hue = 0.758
    @State private var saturation = 0.736
    @State private var brightness = 0.712
    
    @Query(sort: [SortDescriptor(\Tag.datum)]) var seite: [Tag]
    @Environment(\.modelContext) private var modelContext
    
    @State private var ausgewaehlterTag: Int = 0
    
    @State private var EndederWoche = false
    
    var body: some View {
        VStack {
            if seite.count == 0 {
                Text("Error")
            } else {
                let seiten = seite[ausgewaehlterTag]
                               
                VStack {
                    Divider()
                    Text("Meine heutigen Erfolge").font(.title).bold().underline()
                        .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
                    Divider()
                    HStack {
                        Spacer()
                        Stepper(" \(DateUtils.getCaption(seiten.datum))", value: $ausgewaehlterTag, in : 0...90).font(.title2)
                        //Text(seiten.nr)
                        Spacer()
                    }
                    Divider()
                    ScrollView {
                        VStack {
                            //        Spacer()
                            //  if seiten.istBesondererTag {
                            //      Text("Heute ist ein besonderer Tag")}
                            //      else{
                            ForEach(seiten.fragen!.sorted{ $0.sort < $1.sort }) { frage in
                                FragenRow(frage: frage)
                                Divider()
                                //         {
                            }
                            
                        }
                    }
                    .scrollDismissesKeyboard(.interactively)
                }
            }
        }
        .onAppear {
            if seite.count == 0 {
                erstelleTagebuch(startDatum: Date())
            }
            else {
                for i in 0..<seite.count
                {  if seite[i].datum.isToday() { ausgewaehlterTag = i  } }
            }
        }
    }
        func erstelleTagebuch(startDatum: Date) {
            for i in 0...90 {
                let day = Calendar.current.date(byAdding: .day, value: i, to: startDatum)!
                
                let seite = Tag(datum: day, EndederWoche: (i + 1) % 7 == 0 )
                
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
                
                frage = Frage(frage: "DAFÜR BIN ICH HEUTE DANKBAR:", antwort: "", sort: 5)
                modelContext.insert(frage)
                seite.fragen!.append(frage)
                
                frage = Frage(frage: "DAS WAR MEIN HEUTIGER GO-MOMENT:", antwort: "", sort: 6)
                modelContext.insert(frage)
                seite.fragen!.append(frage)
            }
            
        }
     }
    
    struct FragenRow: View {
        @Bindable var frage: Frage
        
        var body: some View {
            VStack {
                Text(frage.frage).foregroundColor(Color(.blue)).bold().font(.title3)
                TextField("Antwort", text: $frage.antwort,axis:.vertical).lineLimit(3, reservesSpace: true)
                // .submitLabel(.next)
                    .onSubmit({hideKeyboard()})
            }
            .onTapGesture {
                hideKeyboard()
            }
        }
    }
    
    
    class DateUtils {
        private static var formatter = createFormatter()
        
        static func getCaption(_ date: Date) -> String {
            
            return formatter.string(from: date)
        }
        
        
        private static func createFormatter() -> DateFormatter {
            let formatter = DateFormatter()
            formatter.dateFormat = "EEEE dd.MM.yyyy"
            formatter.locale = Locale(identifier: "de_DE")
            return formatter
        }
    }

    
extension View {
#if canImport(UIKit)
        func hideKeyboard() {
            UIApplication.shared.sendAction(
                #selector(UIResponder.resignFirstResponder),
                to: nil,
                from: nil,
                for: nil
            )
        }
#endif
    }

extension Date {
  func isToday() -> Bool {
      return Calendar.current.isDate(Date(), inSameDayAs: self)
  }
}
        
#Preview {
    ContentView()
        .modelContainer(for: [Tag.self, Frage.self], inMemory: true)
}
