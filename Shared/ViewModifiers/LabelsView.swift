//
//  LabelsView.swift
//  CatalogosApp (iOS)
//
//  Created by rene on 27/12/24.
//

import SwiftUI

struct LabelsView: View {
    var body: some View {
        
     
            Label("Carro", systemImage: "car")
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke( Color(
                            red: 1/255, green: 130/255, blue: 230/255 , opacity: 0.2
                        ) , lineWidth: 2 )//finaliza stroke
                        .padding()
                )
    }
}

struct LabelsView_Previews: PreviewProvider {
    static var previews: some View {
        LabelsView()
    }
}
