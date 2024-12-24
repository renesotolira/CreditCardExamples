//
//  ListaBotonesView.swift
//  CatalogosApp
//
//  Created by rene on 23/12/24.
//

import SwiftUI

struct ListaBotonesView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                BotonesView()
                BotonesView()
                BotonesView()
                BotonesView()
                BotonesView()
                BotonesView()
                BotonesView()
                BotonesView()
                BotonesView()
                
            }
        }
    }
}

struct ListaBotonesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaBotonesView()
    }
}
