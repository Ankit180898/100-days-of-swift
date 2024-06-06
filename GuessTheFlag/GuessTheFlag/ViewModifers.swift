//
//  ViewModifers.swift
//  GuessTheFlag
//
//  Created by Ankit Kumar on 04/06/24.
//

import SwiftUI





struct Watermark: ViewModifier{
    var text: String
    
    func body(content: Content) -> some View {
        ZStackLayout(alignment: .bottomTrailing){
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
            
        }
    }
}
extension View {
    func watermarked(with text:String) -> some View{
        modifier(Watermark(text: text))
    }
}


struct ViewModifers: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .watermarked(with: "Ankit")
            
    }
}

#Preview {
    ViewModifers()
}
