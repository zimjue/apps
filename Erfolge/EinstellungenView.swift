//
//  EinstellungenView.swift
//  Erfolge
//
//  Created by Jürgen Zimmer on 23.03.24.
//

import SwiftUI
import SwiftData

@MainActor
struct EinstellungenView: View {
    @State private var hue = 0.758
    @State private var saturation = 0.736
    @State private var brightness = 0.712
    
    // lesen der Einträge von Tag , Tag hat ein Array von Fragen
    @Query(sort: [SortDescriptor(\Tag.datum)]) var seite: [Tag]
    @Environment(\.modelContext) private var modelContext
    
    @State private var ausgewaehlterTag = 0
    
    var body: some View {
        ScrollView {
        VStack {
            Spacer()
            Text("Verschiedene Links").font(.title).bold().underline()
                .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
            Divider()
            Link("Homepage", destination: URL(string: "https://damian-richter.com")!)
                  .foregroundColor(.blue).font(.title)
            Link("Eventkalender", destination: URL(string: "https://damian-richter.com/event-directory/")!)
                  .foregroundColor(.blue).font(.title)
            Link("Bücher", destination: URL(string: "https://damian-richter.com/buecher/")!)
                  .foregroundColor(.blue).font(.title)
            Link("CD's & Hörbücher", destination: URL(string: "https://damian-richter.com/cdsundhoerbuecher/")!)
                  .foregroundColor(.blue).font(.title)
            Link("Onlinekurse", destination: URL(string: "https://damian-richter.com/onlinekurse/")!)
                  .foregroundColor(.blue).font(.title)
            Link("Podcast", destination: URL(string: "https://damian-richter.com/podcast/")!)
                  .foregroundColor(.blue).font(.title)
            Link("Coach-Finder", destination: URL(string: "https://damian-richter.com/coach/")!)
                  .foregroundColor(.blue).font(.title)
            Divider()
            Text("Export").font(.title).bold().underline()
                .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
            Divider()
            ShareLink("Export des Journals zu einem PDF", item: render()).font(.title2)
            Divider()
            Spacer()
        }
               }
    }

               func render() -> URL {
                   // 1: Render Hello World with some modifiers
                   let renderer = ImageRenderer(content:
                        ForEach(seite)
                        { seite in
                    VStack {
                       Divider()
                         Text("Meine Erfolge vom").font(.title).bold().underline()
                         .foregroundColor(Color(hue: hue, saturation: saturation, brightness: brightness))
                       
                        Text(DateUtils.getCaption(seite.datum)).font(.title2).bold()
                       Divider()
                          VStack {
                              ForEach(seite.fragen!.sorted{ $0.sort < $1.sort })
                              { frage in FragenRow(frage: frage) }
                              Divider()
                            }
                         }
                   
                   }
                  )
                   

                   // 2: Save it to our documents directory
                   let url = URL.documentsDirectory.appending(path: "output.pdf")

                   // 3: Start the rendering process
                   renderer.render { size, context in
                       // 4: Tell SwiftUI our PDF should be the same size as the views we're rendering
                       var box = CGRect(x: 0, y: 0, width: size.width, height: size.height)

                       // 5: Create the CGContext for our PDF pages
                       guard let pdf = CGContext(url as CFURL, mediaBox: &box, nil) else {
                           return
                       }

                       // 6: Start a new PDF page
                       pdf.beginPDFPage(nil)

                       // 7: Render the SwiftUI view data onto the page
                       context(pdf)

                       // 8: End the page and close the file
                       pdf.endPDFPage()
                       pdf.closePDF()
                   }

                   return url
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
    
                       struct FragenRow: View {
                          
                           @Bindable var frage: Frage
                           
                           var body: some View {
                               VStack {
                                   if frage.antwort.isEmpty
                                   {   }
                                       else {
                                           Text(frage.frage)
                                               .foregroundColor(Color(.blue))
                                               .bold().font(.title3)
                                           Text(frage.antwort)
                                     
                                       }
                               }
                               
                               }
                           }
}
           
#Preview {
    EinstellungenView()
}
