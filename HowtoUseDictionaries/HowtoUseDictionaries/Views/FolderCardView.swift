//
//  FolderCardView.swift
//  HowtoUseDictionaries
//
//  Created by Shaggy Bremnath on 2021-04-22.
//

import SwiftUI

struct FolderCardView: View {
    @State var folder : Folder
    var body: some View {
                Text(folder.name)
                    .foregroundColor(Color.white)
                    .padding(10)
                    .frame(width: 100, height: 75, alignment: .center)
                    .background(Color.green)
                    .cornerRadius(10.0)
    }
}

struct FolderCardView_Previews: PreviewProvider {
    static var previews: some View {
        FolderCardView(folder: folder1)
    }
}
