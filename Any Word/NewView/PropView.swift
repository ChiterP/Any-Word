//
//  PropView.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 4/13/22.
//

import SwiftUI

struct PropView: View {
    @Binding var isShowPropView: Bool
    
    @State private var isShowAddlesson = false
    @State private var activateRootLink = false
    
    var body: some View {
        
//        ZStack {
//            Color(.init(red: 0.120, green: 0.120, blue: 0.12, alpha: 0.5))
//                .ignoresSafeArea()
            VStack {
                HStack {
                    HStack {
                        Image(systemName: "gear")
                        Text("Properties")
                            .bold()
                        Spacer()
                    }.padding(.horizontal)
                    
                }
                VStack {
                    Button { isShowAddlesson.toggle()
                        activateRootLink.toggle()
                    }
                        label: { Text("Add lesson") }
                        .fullScreenCover(isPresented: $isShowAddlesson) {
                            AddLessonTheme(isShowAddlesson: $isShowAddlesson,
                                           activateRootLink: $activateRootLink)
                        }.padding()

                
                    Spacer()
                    HomeButtonView(imageButton: "house.circle", nameButton: "Home", colorButton: .red, action: {
                        isShowPropView.toggle()
                    })
                }
            }
//        }
    }
}

struct PropView_Previews: PreviewProvider {
    static var previews: some View {
        PropView(isShowPropView: .constant(false))
        
    }
}
