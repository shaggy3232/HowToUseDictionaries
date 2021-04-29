//
//  AddFolderView.swift
//  HowtoUseDictionaries
//
//  Created by Shaggy Bremnath on 2021-04-26.
//

import SwiftUI

struct AddFolderView: View {
    @State var Name : String = ""
    @State var folder : Folder
    
    var body: some View {
        VStack{
            Text("Create Folder")
            Spacer()
            TextField("Enter Folder Name", text: $Name)
            Spacer()
            Button(action:{
                folder.contents!.updateValue(Folder(id: 0, name: Name,contents: [0:Folder(id: 0, name: "New Folder")]), forKey: folder.contents!.keys.sorted().last! + 1)
                print(folder)
            }){
                Text("Save")
            }
        }
    }
}

struct AddFolderView_Previews: PreviewProvider {
    static var previews: some View {
        AddFolderView(folder: folder2)
    }
}
