//
//  Editword.swift
//  HowtoUseDictionaries
//
//  Created by Shaggy Bremnath on 2021-04-29.
//

import SwiftUI

struct Editword: View {
    @State var Name : String = ""
    @StateObject var folder : Folder
    
    var body: some View {
        VStack{
            Text("Create Folder")
            Spacer()
            TextField("Enter Folder Name", text: $Name)
            Spacer()
            Button(action:{
                folder.editName(name: Name)
                print(folder)
            }){
                Text("Save")
            }
        }
    }
}

struct Editword_Previews: PreviewProvider {
    static var previews: some View {
        Editword(folder: folder2)
    }
}
