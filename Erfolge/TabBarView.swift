//
//  TabBarView.swift
//  Erfolge
//
//  Created by Jürgen Zimmer on 18.03.24.
//

import SwiftUI

struct TabBarView: View {
    @State private var hue = 0.758
    @State private var saturation = 0.736
    @State private var brightness = 0.712
    var body: some View {
        TabView {
            VStack {
                Image("Iconpic").resizable().frame(width: 200, height:200)
                
                Text("Du wirst Dein Leben niemals verändern, solange Du nicht etwas veränderst, das Du täglich tust. Der Schlüssel zum Erfolg liegt in Deiner täglichen Routine. \n John C. Maxwell").multilineTextAlignment(.center).italic().font(.title3).padding()
                }
            
                .tabItem { Label("Welcome", systemImage: "person" )}
            //PDFUIView()
            EinleitungsView()
                .tabItem { Label("Einleitung", systemImage: "note" )}
            FunktionsView()
                .tabItem { Label("Erklärung", systemImage: "note" )}
            ContentView()
                .tabItem { Label("Journal", systemImage: "note")}
            EinstellungenView()
                .tabItem { Label("Einstellungen", systemImage: "gear")}
        }
    }
}

#Preview {
    TabBarView()
}
