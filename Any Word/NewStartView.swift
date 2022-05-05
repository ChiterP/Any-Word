//
//  NewStartView.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 4/13/22.
//

import SwiftUI

struct NewStartView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: DictAny.entity(), sortDescriptors: []) //тут без сортировки

    private var dictNames: FetchedResults<DictAny>
    
    @State var isShowStartView = false
    @State var isShowPropView = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "house.circle")
                Text("Home")
                    .bold()
                Spacer()
            }.padding(.horizontal)
            
            VStack {
                VStack{
                    ForEach(dictNames) { dict in
                        Text(dict.nameDict ?? "")
                        
                    }
                }
                
                Spacer()
                HStack {
                    HomeButtonView(imageButton: "gear",
                                   nameButton: "Properties",
                                   colorButton: .brown,
                                   action: { isShowPropView.toggle() })
                    .fullScreenCover(isPresented: $isShowPropView,
                                     content: { PropView(
                                        isShowPropView: $isShowPropView)
                    })
                }
            }
        }
    }
}

struct NewStartView_Previews: PreviewProvider {
    static var previews: some View {
        NewStartView()
    }
}
