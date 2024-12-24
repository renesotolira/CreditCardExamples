//
//  ImagesView.swift
//  CatalogosApp
//
//  Created by rene on 19/12/24.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        HStack{
            Image( systemName: "folder" )
                .font(.system(size: 24, weight: .light, design: .default))
                .foregroundColor(Color.green)
                .padding()
                .background(Color.blue)
                .cornerRadius(25)
                           
            //.font(.largeTitle)
            
            Text("Haz clic aqui")
                .rotationEffect(.degrees( 25))
            
            Image(systemName: "arrow.left")
                .imageScale(.large)
                .rotationEffect(.degrees( 180))
            
            Image("windowsXp")
               .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 150)
                .rotationEffect(.degrees( 180))
                .padding()
                .background( Color("marcoBackground"))
                
        }
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ImagesView()
                
            ImagesView()
        }
    }
}
