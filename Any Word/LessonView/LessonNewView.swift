//
//  LessonView.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 3/20/22.
//

import SwiftUI

struct LessonNewView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Spacer()
                    Text("Темы").bold()
                    Spacer()
                    Button(action: { }) {
                        HStack {
                            Image(systemName: "pencil.circle")
                                .font(.title2)
                        }
                        .padding(8)
                        .foregroundColor(.blue)
                    }
                }.padding(.horizontal)
            }
            
            HStack {
                Button(action: {}) {
                    HStack {
                        Text("Сложная тема")
                            .fontWeight(.semibold)
                        //                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                       startPoint: .top, endPoint: .bottom))
                    .cornerRadius(40)
                }
                Spacer()
            }.padding(.horizontal)
            
            HStack {
                Button(action: {}) {
                    HStack {
                        Text("Сложная тема")
                            .fontWeight(.semibold)
                        //                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                       startPoint: .top, endPoint: .bottom))
                    .cornerRadius(40)
                }
                Spacer()
            }.padding(.horizontal)
            Spacer()
        }
    }
}

struct LessonNewView_Previews: PreviewProvider {
    static var previews: some View {
        LessonNewView()
    }
}
