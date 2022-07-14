//
//  EmptyStateInfoView.swift
//  ECGainz
//
//  Created by Consultant on 07/02/22.
//

import SwiftUI

struct EmptyStateInfoView: View {
    
    var image: Image = Image(systemName: "exclamationmark.triangle.fill")
    var title: String = "No data to show"
    var message: String = ""
    
    var body: some View {
        VStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .foregroundColor(.secondary)
                .shadow(radius: 10)
            Text(title)
                .font(kPrimaryBodyFont)
                .bold()
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            Text(message)
                .font(kPrimaryCalloutFont)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding(40)
        .zIndex(1)
    }
}

struct EmptyStateInfoView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateInfoView()
    }
}
