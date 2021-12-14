//
//  ManuView.swift
//  Design
//
//  Created by Apple user on 04/11/21.
//

import SwiftUI


struct ManuView: View {
    var body: some View {
        
        VStack {
            Spacer()
            
            VStack(spacing: 16) {
                MenuRow(title: "Hello Word", icon: "gear")
                MenuRow(title: "Salom", icon: "creditcard")
                MenuRow(title: "Privet", icon: "person.crop.circle")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(radius: 30)
            .padding(.horizontal, 30)
        }
    }
}

struct ManuView_Previews: PreviewProvider {
    static var previews: some View {
        ManuView()
    }
}

struct MenuRow: View {
    
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light, design: .default))
                .imageScale(.large)
                .frame(width: 32, height: 32)
            
            Text(title)
                .font(.system(size: 20, weight: .black, design: .rounded))
                .frame(width: 120, alignment: .leading)
        }
    }
}
