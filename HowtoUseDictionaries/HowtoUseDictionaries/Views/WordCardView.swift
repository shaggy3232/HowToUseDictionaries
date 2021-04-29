//
//  WordCardView.swift
//  HowtoUseDictionaries
//
//  Created by Shaggy Bremnath on 2021-04-20.
//

import SwiftUI

struct WordCardView: View {
    @State var folder : Folder
    var body: some View {
        Text(folder.name)
            .foregroundColor(Color.white)
            .padding(10)
            .frame(width: 100, height: 75, alignment: .center)
            .background(Color.black)
            .cornerRadius(10.0)
            
    }
}

struct WordCardView_Previews: PreviewProvider {
    static var previews: some View {
        WordCardView(folder: folder1)
    }
}
