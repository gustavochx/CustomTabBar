//
//  TabBarView.swift
//  CustomTabBar
//
//  Created by Gustavo Soares on 17/04/22.
//

import SwiftUI

struct TabBarView: View {

    @ObservedObject var viewRouter: ViewRouter

    enum Constants {
        static let tabIconSpacing: CGFloat = 100.0
        static let tabBarHeight: CGFloat = 80.0
        static let iconWidth: CGFloat = 24.0
        static let iconHeight: CGFloat = 24.0
        static let tabBarRadius: CGFloat = 2.0
    }

    private var tabBarOpacity: Double {
        viewRouter.hideTabBar ? 0 : 1
    }

    var body: some View {
        HStack(spacing: Constants.tabIconSpacing) {

            TabBarIcon(viewRouter: viewRouter,
                       assignedPage: .home,
                       width: Constants.iconWidth,
                       height: Constants.iconHeight,
                       iconName: "homekit",
                       tabName: "Home")

            TabBarIcon(viewRouter: viewRouter,
                       assignedPage: .profile,
                       width: Constants.iconWidth,
                       height: Constants.iconHeight,
                       iconName: "person.crop.circle",
                       tabName: "Profile")
        }
        .frame(width: UIScreen.main.bounds.width,
               height: Constants.tabBarHeight)
        .background(Color.white.shadow(radius: Constants.tabBarRadius))
        .opacity(tabBarOpacity)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(viewRouter: .init())
    }
}

