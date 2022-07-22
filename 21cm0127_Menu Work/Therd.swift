//
//  Therd.swift
//  21cm0127_Menu Work
//
//  Created by cmStudent on 2022/07/22.
//

import SwiftUI

struct Therd: View {
    @State var isMoving = false
    var body: some View {
    NavigationView{
        
        Text("1.【上半身】フロントブリッジ\n2.【下半身】プランクレッグレイズ\n3.【大胸筋&二の腕】ノーマルプッシュアップ\n4.【腹筋】クランチ\n5.【腹筋】バイシクルクランチ\n6.【二の腕】ナロープッシュアップ\n7.【二の腕】GACKT流デクラインプッシュアップ\n8.【二の腕】リバースプッシュアップ\n9.【お尻＆太もも】スクワット\n10.【内もも&お尻】ワイドスクワット\n11.【お尻＆太もも】ブルガリアンスクワット\n12.【全身】ヒンズープッシュアップ\n13.【上半身＆腕】懸垂\n14.【上半身＆腕】ヒップリフト")
            .toolbar {
                Button(action:{isMoving.toggle()}){
                    Text("timer")
                }
                .sheet(isPresented:$isMoving)
                {
                    Timers()}
               
            }
            .navigationTitle("筋トレメニュー")
    }
        Text("１項目1分　40秒運動 20秒休憩")
    }
    
}


struct Therd_Previews: PreviewProvider {
    static var previews: some View {
        Therd()
    }
}
