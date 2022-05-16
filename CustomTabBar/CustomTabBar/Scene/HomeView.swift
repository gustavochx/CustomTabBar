//
//  HomeView.swift
//  CustomTabBar
//
//  Created by Gustavo Soares on 12/05/22.
//

import SwiftUI

struct HomeView: View {

    @ObservedObject var viewRouter: ViewRouter

    var body: some View {
        NavigationView {
            List {
                Text("Hey there i'm in Home 🥲")
                Text("What place i should be?")
                Text("Tell me")
                NavigationLink(destination: ChildHomeView(viewRouter: viewRouter)) {
                    Text("Go to my child")
                }
            }
            .navigationTitle("Home")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewRouter: .init())
    }
}
