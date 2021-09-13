//
//  ContentView.swift
//  Poker
//
//  Created by Rohan Tyagi on 13/09/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDecimalNumber=1
    @State var rightDecimalNumber=1
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    diceView(n:leftDecimalNumber)
                    diceView(n:rightDecimalNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action:{
                    self.leftDecimalNumber=Int.random(in: 1...6)
                    self.rightDecimalNumber=Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
            
            
        }
        
    }
}

struct diceView: View {
    
    var n:Int
    
    var body: some View {
        
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


