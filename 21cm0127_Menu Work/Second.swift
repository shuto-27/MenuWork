//
//  Second.swift
//  21cm0127_Menu Work
//
//  Created by cmStudent on 2022/07/22.
//

import SwiftUI

struct Second: View {  @State var isMoving = false
    var body: some View {
        NavigationView{
            
            Text("1.Frog squat フロッグスクワット \n2.Plank プランク\n3.Speed skaters スピードスケーターズ\n4.Inch worms インチワームズ\n5.Leg lifts レッグリフト\n6.Push ups プッシュアップ\n7.Squat jumps スクワットジャンプ\n8.Glute bridge グルットブリッジ\n9.Side planks サイドプランク\n10.Jumping jacks ジャンピングジャック\n11.Gorilla squat ゴリラスクワット\n12.Tricep dips トライセップディップ\n13.Step ups ステップアップ\n14.Superman スーパーマン\n15.Heel touches ヒールタッチ")
                    .toolbar {
                Button(action:{isMoving.toggle()}){
                    Text("timer")
                }
                .sheet(isPresented:$isMoving)
                {
                    Timers()}
                
            }
                    .navigationTitle("走らないメニュー")
                 }
                 Text("１項目1分　40秒運動 20秒休憩")
                 }
                 }
                 struct Second_Previews: PreviewProvider {
                static var previews: some View {
                    Second()
                }
            }
