//
//  ContentView.swift
//  Landmarks
//
//  Created by Christophe Humbert on 24/01/2021.
//

import SwiftUI


struct ContentView: View {
    
    @State private var selection: Tab = .featured


    enum Tab {
        case featured
        case list
        case hike
    }

    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)

            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        
            HikeView (hike: ModelData().hikes[1])
                .tabItem {
                    Label("Hike", systemImage: "person.crop.circle")
                }
                .tag(Tab.hike)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
