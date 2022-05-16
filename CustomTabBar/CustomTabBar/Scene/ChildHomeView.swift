//
//  ChildHomeView.swift
//  CustomTabBar
//
//  Created by Gustavo Soares on 16/05/22.
//

import SwiftUI

struct ChildHomeView: View {

    @ObservedObject var viewRouter: ViewRouter

    var body: some View {
        Text("Hiding the tab bar")
            .onAppear {
                viewRouter.hideTabBar = true
            }
            .onDisappear {
                viewRouter.hideTabBar = false
            }
    }
}

struct ChildHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ChildHomeView(viewRouter: .init())
    }
}
