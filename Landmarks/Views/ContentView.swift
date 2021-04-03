//
//  ContentView.swift
//  Landmarks
//
//  Created by Christophe Humbert on 24/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
          MapView ()
            .ignoresSafeArea(edges: .top)
            .frame(height : 300)
         
          CircleImage()
            .offset(y: -130)
            .padding(.bottom , -130)
            
          VStack (alignment: .leading){
            Text("La Roseraie")
                    .font(.title)
                    .foregroundColor(Color.black)
            HStack {
                Text("Parc départemental de la Roseraie")
                    .font(.subheadline)
                Spacer()
                Text("Val de Marne")
                    .font(.subheadline)
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Divider ()
            
            Text("About La Roseraie")
                .font(.title2)
            Text("Parc floral à thème.")
            
          }
          .padding()
            
          Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
