//
//  TabView.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 12/4/21.
//

import SwiftUI

struct StartView: View {

    var body: some View {
        
        TabView {
            PropertiView().tabItem {
                Label("Настройки", systemImage: "gearshape")
            }
            LessonNewView().tabItem {
                Label("Темы", systemImage: "person.circle")
            }
//            ListenView().tabItem {
//                Label("Дзен", systemImage: "person.circle")
//            }
        }.font(.headline)
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
