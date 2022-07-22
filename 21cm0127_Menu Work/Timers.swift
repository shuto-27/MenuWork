//
//  Timers.swift
//  21cm0127_Menu Work
//
//  Created by cmStudent on 2022/07/22.
//

import SwiftUI

struct Timers: View {
    @State var timerHandlet : Timer?
    
    @State var count = 0
    
    @AppStorage("timer_value")var timerValue = 10
    
    @State var showAlert = false
    var body: some View {
        NavigationView{
            ZStack{
                Image("backgroundTimer")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode:.fill)
                VStack(spacing:30.0){
                    
                    Text("残り\(timerValue - count)秒")
                        .font(.largeTitle)
                    HStack{
                        Button(action:{
                            startTimer()
                        }){
                            Text("スタート")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .frame(width: 140, height: 140)
                                .background(Color("startColor"))
                                .clipShape(Circle())
                            
                        }
                        Button(action:{
                            if let unwrapedTimerHandlet = timerHandlet{
                                if unwrapedTimerHandlet.isValid == true {
                                    unwrapedTimerHandlet.invalidate()
                                }
                            }
                            
                            
                        }){
                            Text("ストップ")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .frame(width: 140, height: 140)
                                .background(Color("stopColor"))
                                .clipShape(Circle())
                            
                            
                        }
                    }
                }
            }
            .onAppear{
                count = 0
            }
            .navigationBarItems(trailing:
                                    NavigationLink(destination:SettingView()){
                                        Text("秒数設定")
                                    }
            )
            .alert(isPresented:$showAlert){
                Alert(title: Text("終了"),
                      message: Text("タイマー終了時間です"),
                      
                      dismissButton: .default(Text("OK")))
                
            }
            
        }
    }
    
    
    func countDownTimer() {
        count+=1
        if timerValue - count <= 0{
            
            timerHandlet?.invalidate()
            showAlert = true
        }
    }
    func startTimer(){
        if let unwrapedTimerHandlet = timerHandlet{
            if unwrapedTimerHandlet.isValid == true {
                return
            }
        }
        if timerValue - count <= 0{
            count = 0
        }
        timerHandlet = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){_ in
            countDownTimer()
        }
    }
}



struct Timers_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Timers()
            Timers()
        }
    }
}



