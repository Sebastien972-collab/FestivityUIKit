//
//  SwiftUIView.swift
//  FestivityUIKit
//
//  Created by Sébastien DAGUIN  on 26/05/2025.
//

import SwiftUI

@available(iOS 18.0, *)
struct PlusButton: View{
    
    public var action: () -> Void
    public init(action: @escaping () -> Void) {
        self.action = action
    }
    public var body: some View {
        Button(action: action) {
            Image(systemName: "plus")
                .foregroundStyle(Color.darkYellow)
                .font(.title)
                .frame(width: 40, height: 40)
                .background(Color.coffe_brown)
                .clipShape(Circle())
                .overlay {
                    Circle()
                        .stroke(Color.darkYellow, lineWidth: 3)
                        
                }
                
        }
    }
}

@available(iOS 18.0, *)
#Preview {
    PlusButton(action:{})
}
