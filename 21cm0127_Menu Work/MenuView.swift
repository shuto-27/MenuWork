//
//  MenuView.swift
//  21cm0127_Menu Work
//
//  Created by cmStudent on 2022/07/22.
//

import SwiftUI

struct MenuView: View {
    @State var isMoving = false
    @State var ismoving = false
    @State var isMving = false
    @State var isMoing = false
    @State var isMovin = false
    var body: some View {
        NavigationView{
            ZStack{
               
                Image("yujiro2_R")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fit)
            
            VStack{
              Text("")
                    .toolbar {
                        Button(action:{isMoving.toggle()}){
                            Text("Map")
                        }
                        .sheet(isPresented:$isMoving)
                        {
                          Maps()}
                        
                       
                    }
                HStack{
                    Button(action:{ismoving.toggle()
                    }){
                        Text("緩め筋トレ")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 140, height: 140)
                            .background(Color("startColor"))
                            .clipShape(Circle())
                    }
                    .sheet(isPresented:$ismoving)
                    {
                        SwiftUIView()}
                    
                    Button(action:{isMving.toggle()
                    }){
                        Text("走らない　有酸素")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 140, height: 140)
                            .background(Color("startColor"))
                            .clipShape(Circle())
                        
                    }
                    .sheet(isPresented:$isMving)
                    {
                        Second()}
                    
                }
                HStack{
                    Button(action:{isMoing.toggle()
                        
                        
                    }){
                        Text("筋トレ")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 140, height: 140)
                            .background(Color("startColor"))
                            .clipShape(Circle())
                        
                    }
                    .sheet(isPresented:$isMoing)
                    {
                        Therd()}
                    
                    Button(action:{isMovin.toggle()}){
                        Text("有酸素\n    +\n筋トレ")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 140, height: 140)
                            .background(Color("startColor"))
                            .clipShape(Circle())
                        
                    }
                    .sheet(isPresented:$isMovin)
                    {
                        Forth()
                    }
                }
                .navigationTitle("モード選択")
                
            }
            }
            
        
        }
        
    }
    
}










struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

