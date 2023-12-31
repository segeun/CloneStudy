//
//  ContentView.swift
//  SoundOfMusic
//
//  Created by 최세근 on 2023/07/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    DanceView()
                } label: {
                    Text("Dance")
                }

                NavigationLink {
                    HiphopView()
                } label: {
                    Text("Hiphop")
                }
                
                NavigationLink {
                    BalladView()
                } label: {
                    Text("Ballad")
                }
            }
            .navigationTitle("사운드 오브 뮤직")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
