//
//  UserProfileView.swift
//  InstagramSwiftUI
//
//  Created by Livia Keller on 10/04/24.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    Image("livia")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundStyle(.blue)
                        .background(Color.white.clipShape(Circle()))
                        .overlay {
                            Circle().stroke(.white, lineWidth: 3)
                        }
                        .offset(x: 35, y: 30)
                }
                
                Spacer()
                
                HStack(spacing: 20.0) {
                    VStack {
                        Text("105")
                            .font(.system(size: 17, weight: .medium))
                        Text("publicações")
                            .font(.footnote)
                    }
                    
                    VStack {
                        Text("2.8K")
                            .font(.system(size: 17, weight: .medium))
                        Text("seguidores")
                            .font(.footnote)
                    }
                    
                    VStack {
                        Text("100")
                            .font(.system(size: 17, weight: .medium))
                        Text("seguindo")
                            .font(.footnote)
                    }
                }
                
                Spacer()
            }
            
            Text("Lívia Keller")
                .font(.system(size: 13, weight: .medium))
                .padding(.top, 5)
            Text("Frase para exemplificar a biografia")
                .font(.system(size: 13, weight: .regular))
                .padding(.top, 1)
            
            HStack(spacing: 8) {
                Group {
                    Button("editar perfil") {
                        print("editar perfil")
                    }
                    Button("compartilhar perfil") {
                        print("compartilhar perfil")
                    }
                }
                .font(.system(size: 13, weight: .medium))
                .foregroundStyle(.black)
                .frame(height: 35)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 3))
            }
            .padding(.top, 10)
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
    }
}

#Preview {
    UserProfileView()
}
