//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Gustavo Soares on 17/04/22.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewRouter = ViewRouter()

    enum Constants {
        static let stackSpacing: CGFloat = 0.0
    }

    var body: some View {
        VStack(spacing: Constants.stackSpacing) {
            switch viewRouter.currentPage {
            case .home:
                HomeView()
            case .profile:
                ProfileView()
            }
            TabBarView(viewRouter: viewRouter)
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
