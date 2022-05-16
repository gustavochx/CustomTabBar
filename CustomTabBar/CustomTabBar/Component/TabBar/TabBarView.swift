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
        static let tabBarRadius: CGFloat = 2.0
    }

    private var tabBarOpacity: Double {
        viewRouter.hideTabBar ? 0 : 1
    }

    var body: some View {
        HStack(spacing: Constants.tabIconSpacing) {
            ForEach(viewRouter.tabs) { tabViewModel in
                TabBarIcon(viewRouter: viewRouter, viewModel: tabViewModel)
            }
        }
        .frame(width: UIScreen.main.bounds.width,
               height: Constants.tabBarHeight)
        .background(Color.white.shadow(radius: Constants.tabBarRadius))
        .opacity(tabBarOpacity)
    }
}

#if DEBUG
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(viewRouter: .init())
    }
}
#endif
