//
//  SaludosView.swift
//  CatalogosApp
//
//  Created by rene on 17/12/24.
//

import SwiftUI

struct SaludosView: View {
    var body: some View {
        HStack(spacing: 50){
            Text("Hola")
               // .frame( width: (geometria.size.width)/2 )
                .background(Color.red)
            
            VStack( spacing: 120 ){
                Text("Adios").background(Color.blue)
                Text("Que onda")
            }
            .background(Color.yellow)
            
        }
    }
}

struct SaludosView_Previews: PreviewProvider {
    static var previews: some View {
        SaludosView()
    }
}
