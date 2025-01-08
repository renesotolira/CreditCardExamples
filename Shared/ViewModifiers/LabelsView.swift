//
//  LabelsView.swift
//  CatalogosApp (iOS)
//
//  Created by rene on 27/12/24.
//

import SwiftUI

struct LabelsView: View {
    var body: some View {
        
        VStack{
        
            Label("Carros", systemImage: "car")
                .modifier( RoundGrayViewModifer()  )
            
            Text("hola")
                .modifier( RoundGrayViewModifer( strokeWidth: 8 , color: Color.red)  )
            
        }
                
    }
}

struct LabelsView_Previews: PreviewProvider {
    static var previews: some View {
        LabelsView()
    }
}
