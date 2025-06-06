//
//  ConfirmationButtonView.swift
//  FestivityUIKit
//
//  Created by Sébastien DAGUIN  on 26/05/2025.
//

import SwiftUI

@available(iOS 18.0, *)
public struct ConfirmationButtonView: View {
    public var title: String
    public var action: () -> Void
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    public var body: some View {
        Button(action: action) {
            Text("Confirmer")
                .padding()
                .foregroundStyle(Color.coffe_brown)
                .frame(maxWidth: 300, maxHeight: 40)
                .background(Color.darkYellow)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}
@available(iOS 18.0, *)
#Preview {
    ConfirmationButtonView(title: "cONFIRMER", action: {})
}
