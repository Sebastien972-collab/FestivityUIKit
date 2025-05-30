//
//  QuickActionButton.swift
//  FestivityUIKit
//
//  Created by Sébastien DAGUIN  on 26/05/2025.
//

import SwiftUI
@available(iOS 18.0, *)
public struct QuickActionButton: View {
    enum Selection {
    case qrCode, scan
    }
    var selection: Selection = .scan
    var action: () -> Void
    public var body: some View {
        Button(action: action) {
            Image(systemName: selection == .qrCode ? "qrcode" : "qrcode.viewfinder")
                .resizable()
                .padding()
                .bold()
                .foregroundStyle(.black)
                .frame(width: 60, height: 60)
                .background(Color.darkYellow)
                .clipShape(Circle())
        }
    }
}
@available(iOS 18.0, *)
#Preview {
    HStack {
        QuickActionButton(selection: .scan, action: {})
        QuickActionButton(selection: .qrCode, action: {})
    }
}
