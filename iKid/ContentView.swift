//
//  ContentView.swift
//  iKid
//
//  Created by Yao Zhang on 4/27/24.
//

import SwiftUI

enum AppScreen: Hashable, Identifiable, CaseIterable {
    
    case good
    case pun
    case dad
    
    var id: AppScreen { self }
}

struct GoodNavigationStack: View {
    var body: some View {
        NavigationStack {
            Text("Good Joke")
            NavigationLink(destination: {
                Text("Good Joke 2")
            }) {
                Text("Next")
                    .frame(minWidth: 0, maxWidth: 60)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
            .navigationTitle("Good Joke")
        }
    }
}

struct PunNavigationStack: View {
    var body: some View {
        NavigationStack {
            Text("Pun Joke")
            NavigationLink(destination: {
                Text("Pun Joke 2")
            }) {
                Text("Next")
                    .frame(minWidth: 0, maxWidth: 60)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
            .navigationTitle("Pun Joke")
        }
    }
}

struct DadNavigationStack: View {
    
    var body: some View {
        NavigationStack {
            Text("Dad Joke")
            NavigationLink(destination: {
                Text("Dad Joke 2")
            }) {
                Text("Next")
                    .frame(minWidth: 0, maxWidth: 60)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
            .navigationTitle("Dad Joke")
        }
    }
}

extension AppScreen {
    
    @ViewBuilder
    var label: some View {
        switch self {
            case .good:
                Label("Good", systemImage: "sun.min")
            case .pun:
                Label("Pun", systemImage: "sun.horizon")
        case .dad:
                Label("Dad", systemImage: "sun.max")
        }
    }
    
    @ViewBuilder
    var destination: some View {
        switch self {
            case .good:
                GoodNavigationStack()
            case .pun:
                PunNavigationStack()
            case .dad:
                DadNavigationStack()
        }
    }
    
}

struct AppTabView: View {
    
    @Binding var selection: AppScreen?
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(AppScreen.allCases) { screen in
                screen.destination
                    .tag(screen as AppScreen?)
                    .tabItem { screen.label }
            }
        }
    }
}

struct ContentView: View {
    
    @State private var selection: AppScreen? = .good
    
    var body: some View {
        AppTabView(selection: $selection)
    }
}

@main
struct iKid: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
#Preview {
    ContentView()
}
