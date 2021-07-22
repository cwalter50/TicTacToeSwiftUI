//
//  ContentView.swift
//  TicTacToeSwiftUI
//
//  Created by Christopher Walter on 7/22/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var moves = Array(repeating: "", count: 9)
    @State private var xTurn = true
    
    var body: some View {
        VStack {
            Text("Tic Tac Toe")
                .font(.title)
                .bold()
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120), spacing: 15), count: 3), spacing: 15, content: {
                ForEach(0..<9) { index in
                    ZStack {
                        Color.blue
                        Color.white
                            .opacity(moves[index] == "" ? 1 : 0)
                        Text(moves[index])
                            .font(.system(size: 90))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 120, height: 120, alignment: .center)
                    .cornerRadius(30)
                    .onTapGesture {
                        withAnimation(Animation.default) {
                            if moves[index] == "" {
                                moves[index] = xTurn ? "X":"O"
                                xTurn.toggle()
                            }
                        }
                    }
                    .rotation3DEffect(
                        .init(degrees: moves[index] != "" ? 180:0),
                        axis: (x:   2.0, y: 1.0, z: 9.0)
                    )

                }

            })
        }
        .preferredColorScheme(.dark)
    }

    
    

    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
