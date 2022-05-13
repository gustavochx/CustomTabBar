//
//  ViewRouter.swift
//  CustomTabBar
//
//  Created by Gustavo Soares on 17/04/22.
//

import Foundation
import SwiftUI

enum Page {
    case home
    case profile
}

final class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
    @Published var hideTabBar: Bool = false

    private (set) var tabs: [TabBarIconViewModel] = []
    private let iconWidth: CGFloat = 24.0
    private let iconHeight: CGFloat = 24.0

    init() {
        createTabs()
    }

    private func createTabs() {
        tabs = [
            TabBarIconViewModel(assignedPage: .home,
                                width: iconWidth,
                                height: iconHeight,
                                iconName: "homekit",
                                tabName: "Home"),
            TabBarIconViewModel(assignedPage: .profile,
                                width: iconWidth,
                                height: iconHeight,
                                iconName: "person.crop.circle",
                                tabName: "Profile")
        ]
    }
}
