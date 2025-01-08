//
//  RoundGrayViewModifer.swift
//  CatalogosApp (iOS)
//
//  Created by rene on 27/12/24.
//

import SwiftUI

struct RoundGrayViewModifer: ViewModifier {
    
    var strokeWidth : CGFloat = 2
    var color: Color = Color.green
    
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(color)
            .foregroundColor(.blue)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke( Color(
                        red: 1/255, green: 130/255, blue: 230/255 , opacity: 0.2
                    ) , lineWidth: strokeWidth )//finaliza stroke
                    .padding()
            )
            .background(Color.yellow)
    }
}
