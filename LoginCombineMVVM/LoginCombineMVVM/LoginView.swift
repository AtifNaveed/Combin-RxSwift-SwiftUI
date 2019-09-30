//
//  LoginView.swift
//  LoginCombineMVVM
//
//  Created by Atif on 29/09/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var vm: LoginViewModel
    
    init(vm: LoginViewModel) {
        self.vm = vm
    }
    
    var body: some View {
        textFldEmail
    }
}

private extension LoginView {
    var textFldEmail: some View {
        VStack(alignment: .center) {
            
            TextField("Email", text: $vm.email)
            .padding()
            .background(Color.green)
            .cornerRadius(4.0)
            .padding(EdgeInsets(top: 0, leading: 25, bottom: 2, trailing: 25))

            
            SecureField("Password", text: $vm.password)
           .padding()
           .background(Color.green)
           .cornerRadius(4.0)
           .padding(EdgeInsets(top: 0, leading: 25, bottom: 2, trailing: 25))

            
            Button(action: {
                //self.vm.isValid.toggle()
                if (self.vm.isValid) {
                    print("True")
                } else {print("False")}

            }) {
                Text("Login")
                    .foregroundColor(Color(vm.btnColor))
            }
            .padding(.all)
            .background(Color.black)
            .cornerRadius(4.0)
            //.disabled(true)
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = LoginViewModel()
        let loginView = LoginView(vm: vm)
        return loginView
   }
}

