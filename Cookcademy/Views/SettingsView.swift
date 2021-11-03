//
//  SettingsView.swift
//  Cookcademy
//
//  Created by Adib Najjar on 25/10/2021.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    @State private var hideOptionalSteps: Bool = false
    @State private var listBackgroundColor = AppColor.background
    @State private var listTextColor = AppColor.foreground
    
    var body: some View {
        NavigationView {
            Form{
                ColorPicker("List Background Color", selection: $listBackgroundColor)
                    .padding()
                    .listRowBackground(listBackgroundColor)
                ColorPicker("Text Color", selection: $listTextColor)
                    .padding()
                    .listRowBackground(listBackgroundColor)
                Toggle("Hide Optional Steps", isOn: $hideOptionalSteps)
                    .padding()
                    .listRowBackground(listBackgroundColor)
            }
            .foregroundColor(listTextColor)
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Preview: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
