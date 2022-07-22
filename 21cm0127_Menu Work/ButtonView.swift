//
//  ButtonView.swift
//  21cm0127_Menu Work
//
//  Created by cmStudent on 2022/07/22.
//

import SwiftUI

struct ButtonView: View {
    var text: String
    var proxy: GeometryProxy
    var body: some View {
        Text(text)
            .font(.title)
            .foregroundColor(Color.white)
            .frame(width: proxy.size.width / 2-50, height: proxy.size.height / 2-50)
            .background(Color("startColor"))
            .clipShape(Circle())
    }
}


