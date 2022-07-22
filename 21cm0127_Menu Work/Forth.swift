//
//  Forth.swift
//  21cm0127_Menu Work
//
//  Created by cmStudent on 2022/07/22.
//

import SwiftUI

struct Forth: View {
    @State var isMoving = false
    var body: some View {
       
        NavigationView{
            
            Text("1.ウォーキング\n2.ジョギング\n3.ランニング\n4.プッシュアップ\n5.ワイドプッシュアップ\n6.リバースハンドプッシュアップ\n7.アッパーチェスト\n8.シールプッシュアップ\n9.アッチャープッシュアップ\n10.ナロープッシュアップ\n11.ダイヤモンドプッシュアップ\n12.プッシュアップ\n13.ワイドプッシュアップ\n14.リバースハンドプッシュアップ\n15.アッパーチェスト\n16.シールプッシュアップ\n17.アッチャープッシュアップ\n18.ナロープッシュアップ\n19.ダイヤモンドプッシュアップ")
                .toolbar {
                    Button(action:{isMoving.toggle()}){
                        Text("timer")
                    }
                    .sheet(isPresented:$isMoving)
                    {
                        Timers()}
                    
                }.navigationTitle("メニュー")
        }
        Text("1〜3有酸素、4〜19筋トレ")
        Text("有酸素各項目10分")
        Text("筋トレ各項目40秒休憩20秒休憩合計1分")
    }
    
}

struct Forth_Previews: PreviewProvider {
    static var previews: some View {
        Forth()
    }
}
