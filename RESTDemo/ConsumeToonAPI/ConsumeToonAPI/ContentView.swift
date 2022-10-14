//
//  ContentView.swift
//  ConsumeToonAPI
//
//  Created by Timmy Lau on 2022-10-14.
//

import SwiftUI

struct ContentView: View {
    
    //        create a @State varible for my Toon characters, create an empty Toon array.
    @State var toons  = [Toon]()
    
    
    var body: some View {
        
        List(toons){
            //            item in Text("\(item.firstName) \(item.lastName)")
            
            item in
            VStack(alignment: .leading) {
                Text("\(item.firstName) \(item.lastName)")
                    .font(.title)
                    .foregroundColor(.red)
                    .padding(.bottom)
                Text("\(item.occupation)")
                    .font(.body)
                    .fontWeight(.bold)
                Text("\(item.gender)")
                    .font(.body)
                    .fontWeight(.semibold)
                //Image(systemName: book.pictureUrl)
                Text("\(item.pictureUrl)")
                    .font(.body)
                    .fontWeight(.semibold)
                AsyncImage(url: URL(string: item.pictureUrl)).frame(width: 300, height: 400, alignment: Alignment.top)
                Spacer()
            }
        }
        .padding()
        .onAppear() {
            Api().loadData{
                (toons) in self.toons = toons
            }
        }.navigationTitle("Toons list")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
