//
//  TabBarIcon.swift
//  CustomTabBar
//
//  Created by Gustavo Soares on 18/04/22.
//

import SwiftUI

struct TabBarIcon: View {

    @ObservedObject var viewRouter: ViewRouter

    private let assignedPage: Page
    private let width: CGFloat
    private let height: CGFloat
    private let iconName: String
    private let tabName: String

    enum Constants {
        static let imagePaddingFromTabBar: CGFloat = 10.0
    }

    public init(viewRouter: ViewRouter,
                assignedPage: Page,
                width: CGFloat,
                height: CGFloat,
                iconName: String,
                tabName: String) {
        self.viewRouter = viewRouter
        self.assignedPage = assignedPage
        self.width = width
        self.height = height
        self.iconName = iconName
        self.tabName = tabName
    }

    var body: some View {
        VStack {
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, Constants.imagePaddingFromTabBar)
            Text(tabName)
                .font(.footnote)
            Spacer()
        }
        .foregroundColor(viewRouter.currentPage == assignedPage ? Color.blue : .gray)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
    }
}


struct TabBarIcon_Previews: PreviewProvider {
    static var previews: some View {
        TabBarIcon(viewRouter: .init(),
                   assignedPage: .home,
                   width: 24.0,
                   height: 24.0,
                   iconName: "homekit",
                   tabName: "Home")
    }
}
