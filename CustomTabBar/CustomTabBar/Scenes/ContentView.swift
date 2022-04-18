//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Gustavo Soares on 17/04/22.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewRouter = ViewRouter()

    var body: some View {
        VStack(spacing: 0.0) {

            Spacer()

            switch viewRouter.currentPage {
            case .home:
                Text("Home")
            case .profile:
                ProfileView()
            }

            Spacer()
            
            TabBarView(viewRouter: viewRouter)
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
