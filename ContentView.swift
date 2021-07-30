//
//  ContentView.swift
//  AlertSet
//
//  Created by Kyohei Morinaka on 2021/07/30.
//

import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false
    
    var body: some View {
        Button(action: {
            isError = true
        }) {
            Text("アラート")
    }.alert(isPresented: $isError) {
        Alert(title: Text("この選手を登録抹消しますか？"), message: Text("おはよーでやんすう"),
              //defaultは通常
              primaryButton: .destructive(Text("抹消する"), action:{
                okAction()
              }),
              secondaryButton: .cancel(Text("やっぱやめとく"), action:{})
        )}
        
    }
}
func okAction(){
    print("selected OK")
  }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
