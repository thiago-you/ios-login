//
//  ContentView.swift
//  Login
//
//  Created by user241334 on 9/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var email = "thiago.you@puc.com.br"
    @State private var senha = "thiago.you"
    @State private var rememberPassword = true
    
    var body: some View {
        GeometryReader { reader in
            ZStack {
                Color("darkPurple").ignoresSafeArea()
                VStack {
                    Spacer()
                    Image("logo")
                        .resizable()
                        .frame(width: 250, height: 250)
                    Spacer()
                    ZStack {
                        Color.white.ignoresSafeArea()
                        VStack {
                            Text("Crie sua conta")
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 30)
                            Text("E-mail:")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            TextField("Digite seu e-mail...", text: $email)
                                .textFieldStyle(.roundedBorder)
                                .padding(.bottom, 20)
                            HStack {
                                Text("Senha:")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Spacer()
                                Text("Recuperar Senha")
                                    .foregroundColor(.blue)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            }
                            SecureField("Digite sua senha...", text: $senha)
                                .textFieldStyle(.roundedBorder)
                                .padding(.bottom, 20)
                            HStack {
                                Text("Lembrar minha senha")
                                    .font(.caption)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Spacer()
                                Toggle("", isOn: $rememberPassword)
                            }
                            .padding(.bottom, 30)
                            Button("Criar conta") {
                                
                            }
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("darkPurple"))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.bottom, 10)
                            Button {
                                
                            }
                            label: {
                                Image(systemName: "applelogo")
                                Text("Continuar com Apple")
                            }
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .padding()
                            .background(.black)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.bottom, 10)
                            HStack {
                                Text("Ja possui uma conta?")
                                    .font(.caption)
                                Text("Entre")
                                    .font(.caption)
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding()
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.bottom, -38)
                }
                .frame(minHeight: reader.size.height)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
