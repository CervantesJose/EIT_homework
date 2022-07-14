//
//  Diets.swift
//  ECGainz
//
//  Created by Consultant on 07/02/22.
//
import SwiftUI

struct Diets: View {
    var body: some View {
        NavigationView {
            ZStack {
                EmptyStateInfoView(image: Image(systemName: "waveform.path.ecg"), title: "Yet to be implemented!")
                .navigationBarTitle(Text("Diets"))
            }
        }
    }
}

struct Diets_Previews: PreviewProvider {
    static var previews: some View {
        Diets()
    }
}
