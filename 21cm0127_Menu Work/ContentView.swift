//
//  ContentView.swift
//  21cm0127_Menu Work
//
//  Created by cmStudent on 2022/07/22.
//

import SwiftUI

struct ContentView: View {
    
        @ObservedObject var viewModel: LoginViewModel
        
        init(viewModel: LoginViewModel) {
            self.viewModel = viewModel
        }
        
        var body: some View {
            NavigationView{
            VStack(spacing: 15) {
                Text("アカウントIDでログイン")
                    .bold()
                
               
                TextField("ID（半角英数）", text: $viewModel.id)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300)
                
               
                TextField("パスワード（半角英数）", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300)
                
                Button(action: {}) {
                NavigationLink(destination:MenuView()){Text("ログイン")
                        .frame(width: 200, height: 45)
                                                        .foregroundColor(Color.white)
                                                        
                                                        .background(viewModel.isValidId && viewModel.isValidPassword ? Color.blue : Color.gray)
                                                        .cornerRadius(10, antialiased: true)
                                                       
                                                        .disabled(!viewModel.isValidId || !viewModel.isValidPassword)
}
                }
                }
                  }
                
                }
                
            }
        
    
struct Content_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: LoginViewModel())
    }
}
import Combine

class LoginViewModel: ObservableObject {
    @Published var id: String = ""
    @Published var password: String = ""
    
   
    @Published var isValidId: Bool = false
    @Published var isValidPassword: Bool = false
    
    @Published var isLoginButtonTapped: Bool = false
    
    private var disposables = [AnyCancellable]()
    
    init() {
        $id
            .sink(receiveValue: {
                self.isValidId = $0.isAlphanumeric && !$0.isEmpty ? true : false
            })
            .store(in: &disposables)
        
        $password
            .sink(receiveValue: {
                self.isValidPassword = $0.isAlphanumeric && !$0.isEmpty ? true : false
            })
            .store(in: &disposables)
        
        $isLoginButtonTapped.sink(receiveValue: { isTapped in
                if isTapped == true {
                    
                }
            })
            .store(in: &disposables)
    }
}
extension String {
    
    var isAlphanumeric: Bool {
        return !isEmpty && range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
    }
}
import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let viewModel = LoginViewModel()
        let ContentView = ContentView(viewModel: viewModel)

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: ContentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
