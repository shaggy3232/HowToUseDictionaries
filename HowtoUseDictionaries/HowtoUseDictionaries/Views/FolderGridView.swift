//
//  FolderGridView.swift
//  HowtoUseDictionaries
//
//  Created by Shaggy Bremnath on 2021-04-22.
//

import SwiftUI

struct FolderGridView: View {
    @StateObject var folder : Folder
    
    var body: some View {
        List{
            ForEach((folder.contents?.keys.sorted())!, id: \.self) { key in
                    
                if folder.contents![key]!.contents!.isEmpty {
                        GeometryReader{ geometry in
                            HStack{
                                WordCardView(folder: folder.contents![key]!)
                                NavigationLink(destination: Editword(folder: folder.contents![key]!)){
                                    Text("Edit")
                                }
                            }
                    }.frame(width: 300, height: 100)
                }
                
                if folder.contents![key]!.contents!.isEmpty == false {
                        GeometryReader{ geometry in
                            VStack{
                                NavigationLink(destination: FolderGridView(folder: folder.contents![key]!)){
                                    FolderCardView(folder: folder.contents![key]!)
                                }
                            }
                    }.frame(width: 100, height: 200)
                }
            }.padding(10)
        }
        NavigationLink(destination: AddFolderView(folder: folder)){
            Text("Add SubFolder")
        }
    }
}

struct FolderGridView_Previews: PreviewProvider {
    static var previews: some View {
        FolderGridView(folder: folder1)
    }
}
