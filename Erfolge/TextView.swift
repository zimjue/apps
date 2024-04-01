//
//  TextView.swift
//  Erfolge
//
//  Created by Jürgen Zimmer on 14.03.24.
//

import SwiftUI

struct TextView: View {
    @State private var hue = 0.758
    @State private var saturation = 0.736
    @State private var brightness = 0.712
    var body: some View {
        VStack {
        NavigationView{
        VStack {
           
            Image("Iconpic")
                .resizable()
                .frame(width: 300, height:300)
          
            Text("Du wirst Dein Leben niemals verändern, solange Du nicht etwas veränderst, das Du täglich tust. Der Schlüssel zum Erfolg liegt in Deiner täglichen Routine. \n John C. Maxwell").multilineTextAlignment(.center).italic().padding()
            Divider()
            VStack {
                    NavigationLink(destination: EinleitungsView()) { Text("Einleitung zum Erfolgsmacher Journal") }
                    NavigationLink(destination: FunktionsView()) { Text("So funktioniert das Erfolgsmacher Journal") }
                Divider()
                NavigationLink(destination: ContentView()) { Text("Hier gehts zum Erfolgsmacher Journal").bold() }
                Divider()
                   
            }
            
              }
        // .navigationTitle("Erfolgsmacher Journal")
        
        //.padding(0)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .padding(0)
        }
    }
}
    

#Preview {
    TextView()
}
