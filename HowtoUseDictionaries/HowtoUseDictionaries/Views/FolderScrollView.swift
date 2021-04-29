//
//  FolderView.swift
//  HowtoUseDictionaries
//
//  Created by Shaggy Bremnath on 2021-04-19.
//

import SwiftUI

struct FolderScrollView: View {
    @StateObject var folder : Folder
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 10){
                ForEach((folder.contents?.keys.sorted())!, id: \.self) { key in
                        
                    if folder.contents![key]!.contents!.isEmpty {
                            GeometryReader{ geometry in
                                VStack{
                                    WordCardView(folder: folder.contents![key]!)
                                }
                        }.frame(width: 100, height: 200)
                    }
                    
                    if folder.contents![key]!.contents!.isEmpty == false {
                            GeometryReader{ geometry in
                                VStack{
                                    NavigationLink(destination: FolderGridView(folder: $folder.contents[key])){
                                        FolderCardView(folder: folder.contents![key]!)
                                    }
                                }
                        }.frame(width: 100, height: 200)
                    }
                }.padding(10)
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: 200)

        
        
    }
}
struct FolderView_Previews: PreviewProvider {
    static var previews: some View {
        FolderScrollView(folder: folder1)
    }
}
