//
//  SettingsView.swift
//  Fructus
//
//  Created by Marcel Felipe Gottardi Anesi on 22/03/24.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    firstSection
                    
                    secondSection
                    
                    thirdSection
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }
        }
    }
}

// MARK: - Layout
extension SettingsView {
    
    var firstSection: some View {
        GroupBox(
            label:
                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        ) {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .cornerRadius(9)
                
                Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                    .font(.footnote)
            }
        }
    }
    
    var secondSection: some View {
        GroupBox(
            label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
        ) {
            Divider().padding(.vertical, 4)
            
            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                .padding(.vertical, 8)
                .frame(minHeight: 60)
                .layoutPriority(1)
                .font(.footnote)
                .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding) {
                if isOnboarding {
                    Text("Restarted".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(Color.green)
                } else {
                    Text("Restart".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(Color.secondary)
                }
            }
            .padding()
            .background(
                Color(UIColor.tertiarySystemBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            )
        }
    }
    
    var thirdSection: some View {
        GroupBox(
            label:
                SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
        ) {
            SettingsRowView(name: "Developer", content: "Marcel Felipe")
            SettingsRowView(name: "Compatibility", content: "iOS 14")
            SettingsRowView(name: "SwiftUI", content: "2.0")
            SettingsRowView(name: "Version", content: "1.1.0")
        }
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
        .previewDevice("iPhone 15 Pro")
}
