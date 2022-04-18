//
//  ViewRouter.swift
//  CustomTabBar
//
//  Created by Gustavo Soares on 17/04/22.
//

import Foundation

enum Page {
    case home
    case profile
}

final class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
    @Published var hideTabBar: Bool = false
}
