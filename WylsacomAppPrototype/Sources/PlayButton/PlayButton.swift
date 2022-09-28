//
//  PlayButton.swift
//  WylsacomAppPrototype
//
//  Created by Ilya Volkov on 28.09.2022.
//

import SwiftUI

struct PlayButton: View {
    
    let viewWidth = UIScreen.main.bounds.width
    
    var body: some View {
        Button {} label: {
            ZStack {
                Circle()
                    .foregroundColor(.white)
                    .frame(width: viewWidth * 0.13, height: viewWidth * 0.13)
                Image(systemName: "play.fill")
                    .foregroundColor(.black)
            }
            .padding([.leading, .bottom], 5)
        }
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton()
    }
}
