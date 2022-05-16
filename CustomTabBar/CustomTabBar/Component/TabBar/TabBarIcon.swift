//
//  TabBarIcon.swift
//  CustomTabBar
//
//  Created by Gustavo Soares on 18/04/22.
//

import SwiftUI

struct TabBarIconViewModel: Identifiable {
    var id: String {
        "\(assignedPage)"
    }

    let assignedPage: Page
    let width: CGFloat
    let height: CGFloat
    let iconName: String
    let tabName: String
}

struct TabBarIcon: View {

    @ObservedObject var viewRouter: ViewRouter
    private let viewModel: TabBarIconViewModel

    enum Constants {
        static let imagePaddingFromTabBar: CGFloat = 10.0
    }

    public init(viewRouter: ViewRouter,
                viewModel: TabBarIconViewModel) {
        self.viewRouter = viewRouter
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Image(systemName: viewModel.iconName)
                .aspectRatio(contentMode: .fit)
                .frame(width: viewModel.width,
                       height: viewModel.height)
                .padding(.top, Constants.imagePaddingFromTabBar)
            Text(viewModel.tabName)
                .font(.footnote)
            Spacer()
        }
        .foregroundColor(viewRouter.currentPage == viewModel.assignedPage ? .blue : .gray)
        .onTapGesture {
            viewRouter.currentPage = viewModel.assignedPage
        }
    }
}

#if DEBUG
struct TabBarIcon_Previews: PreviewProvider {
    static var previews: some View {
        TabBarIcon(
            viewRouter: .init(),
            viewModel:  .init(assignedPage: .home,
                              width: 24.0,
                              height: 24.0,
                              iconName: "homekit",
                              tabName: "Home")
        )
    }
}
#endif
