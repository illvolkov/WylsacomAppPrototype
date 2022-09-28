//
//  NavigationBar.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 26.09.2022.
//

import SwiftUI

struct NavigationView: View {
    
    let title: String
    private let viewWidth = UIScreen.main.bounds.width

    
    var body: some View {
        VStack(spacing: 14) {
            HStack {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Spacer()
                Button {} label: {
                    Image("profile")
                        .resizable()
                }
                .frame(width: viewWidth * 0.1, height: viewWidth * 0.1)
                .clipShape(Circle())
            }
            .padding([.leading, .trailing], 20)
            .padding(.top, 30)
            Divider()
                .background(.secondary)
                .padding(.leading, 20)
                .opacity(0.3)
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(title: "Лента")
    }
}
