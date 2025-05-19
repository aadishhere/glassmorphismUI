//
//  ContentView.swift
//  GlassMusicPlayerUI
//
//  Created by Aadish Jain on 19/05/25.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
}

struct ContentView: View {
    let items = [
        Item(
            imageName: "cpu.fill",
            title: "AI Accelerator",
            description: "Experience blazing-fast inference powered by cutting-edge neural cores."
        ),
        Item(
            imageName: "network",
            title: "Quantum Network",
            description: "Explore the future of ultra-secure communication through quantum entanglement."
        ),
        Item(
            imageName: "server.rack",
            title: "Edge Computing",
            description: "Deploy real-time data processing closer to where it's needed most."
        ),
        Item(
            imageName: "cloud.fill",
            title: "Cloud Sync",
            description: "Seamlessly access your data anywhere with secure and scalable cloud storage."
        )
    ]

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.purple.opacity(0.8), .blue.opacity(0.8)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 50)
                .fill(.ultraThinMaterial)
                .frame(maxWidth: .infinity)
                .padding()
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                List {
                    ForEach(items) { item in
                        HStack() {
                            Image(systemName: item.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.primary)
                                .padding(.leading, 5)
                                .padding()
                            
                            VStack(alignment: .leading) {
                                Text(item.title)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                
                                Text(item.description)
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                        }
                        .padding(.all)
                        .background(
                            RoundedRectangle(cornerRadius: 50)
                                .fill(.ultraThinMaterial.opacity(0.3))
                        )
                    }
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
                .background(Color.clear)
            }
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
