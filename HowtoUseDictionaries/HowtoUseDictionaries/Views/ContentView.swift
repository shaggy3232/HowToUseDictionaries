//
//  ContentView.swift
//  HowtoUseDictionaries
//
//  Created by Shaggy Bremnath on 2021-04-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                
                FolderScrollView(folder: folder1)
                
                FolderScrollView(folder: folder2)
                
            }

        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
