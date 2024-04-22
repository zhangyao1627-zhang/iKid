@_private(sourceFile: "ContentView.swift") import iKid
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/zhangyao1627/Documents/Code/Swift/iKid/iKid/ContentView.swift", line: 128)
        AppTabView(selection: $selection)
    
#sourceLocation()
    }
}

extension AppTabView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/zhangyao1627/Documents/Code/Swift/iKid/iKid/ContentView.swift", line: 113)
        TabView(selection: $selection) {
            ForEach(AppScreen.allCases) { screen in
                screen.destination
                    .tag(screen as AppScreen?)
                    .tabItem { screen.label }
            }
        }
    
#sourceLocation()
    }
}

extension AppScreen {
    @_dynamicReplacement(for: destination) @ViewBuilder private var __preview__destination: some View {
        #sourceLocation(file: "/Users/zhangyao1627/Documents/Code/Swift/iKid/iKid/ContentView.swift", line: 96)
        switch self {
            case .good:
                GoodNavigationStack()
            case .pun:
                PunNavigationStack()
            case .dad:
                DadNavigationStack()
        }
    
#sourceLocation()
    }
}

extension AppScreen {
    @_dynamicReplacement(for: label) @ViewBuilder private var __preview__label: some View {
        #sourceLocation(file: "/Users/zhangyao1627/Documents/Code/Swift/iKid/iKid/ContentView.swift", line: 84)
        switch self {
            case .good:
                Label(__designTimeString("#2399.[5].[0].property.[0].[0].[0].[0].arg[0].value", fallback: "Good"), systemImage: __designTimeString("#2399.[5].[0].property.[0].[0].[0].[0].arg[1].value", fallback: "sun.min"))
            case .pun:
                Label(__designTimeString("#2399.[5].[0].property.[0].[0].[1].[0].arg[0].value", fallback: "Pun"), systemImage: __designTimeString("#2399.[5].[0].property.[0].[0].[1].[0].arg[1].value", fallback: "sun.horizon"))
        case .dad:
                Label(__designTimeString("#2399.[5].[0].property.[0].[0].[2].[0].arg[0].value", fallback: "Dad"), systemImage: __designTimeString("#2399.[5].[0].property.[0].[0].[2].[0].arg[1].value", fallback: "sun.max"))
        }
    
#sourceLocation()
    }
}

extension DadNavigationStack {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/zhangyao1627/Documents/Code/Swift/iKid/iKid/ContentView.swift", line: 62)
        NavigationStack {
            Text(__designTimeString("#2399.[4].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Dad Joke"))
            NavigationLink(destination: {
                Text(__designTimeString("#2399.[4].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "Dad Joke 2"))
            }) {
                Text(__designTimeString("#2399.[4].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Next"))
                    .frame(minWidth: __designTimeInteger("#2399.[4].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value", fallback: 0), maxWidth: __designTimeInteger("#2399.[4].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[1].value", fallback: 60))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(__designTimeInteger("#2399.[4].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].modifier[4].arg[0].value", fallback: 10))
            }
            .padding()
            .navigationTitle(__designTimeString("#2399.[4].[0].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: "Pun Joke"))
        }
    
#sourceLocation()
    }
}

extension PunNavigationStack {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/zhangyao1627/Documents/Code/Swift/iKid/iKid/ContentView.swift", line: 41)
        NavigationStack {
            Text(__designTimeString("#2399.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Pun Joke"))
            NavigationLink(destination: {
                Text(__designTimeString("#2399.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "Pun Joke 2"))
            }) {
                Text(__designTimeString("#2399.[3].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Next"))
                    .frame(minWidth: __designTimeInteger("#2399.[3].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value", fallback: 0), maxWidth: __designTimeInteger("#2399.[3].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[1].value", fallback: 60))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(__designTimeInteger("#2399.[3].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].modifier[4].arg[0].value", fallback: 10))
            }
            .padding()
            .navigationTitle(__designTimeString("#2399.[3].[0].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: "Pun Joke"))
        }
    
#sourceLocation()
    }
}

extension GoodNavigationStack {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/zhangyao1627/Documents/Code/Swift/iKid/iKid/ContentView.swift", line: 21)
        NavigationStack {
            Text(__designTimeString("#2399.[2].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Good Joke"))
            NavigationLink(destination: {
                Text(__designTimeString("#2399.[2].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "Good Joke 2"))
            }) {
                Text(__designTimeString("#2399.[2].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Next"))
                    .frame(minWidth: __designTimeInteger("#2399.[2].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value", fallback: 0), maxWidth: __designTimeInteger("#2399.[2].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[1].value", fallback: 60))
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(__designTimeInteger("#2399.[2].[0].property.[0].[0].arg[0].value.[1].arg[1].value.[0].modifier[4].arg[0].value", fallback: 10))
            }
            .padding()
            .navigationTitle(__designTimeString("#2399.[2].[0].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: "Good Joke"))
        }
    
#sourceLocation()
    }
}

extension AppScreen {
    @_dynamicReplacement(for: id) private var __preview__id: AppScreen {
        #sourceLocation(file: "/Users/zhangyao1627/Documents/Code/Swift/iKid/iKid/ContentView.swift", line: 16)
 self 

#sourceLocation()
    }
}

import enum iKid.AppScreen
import struct iKid.GoodNavigationStack
import struct iKid.PunNavigationStack
import struct iKid.DadNavigationStack
import struct iKid.AppTabView
import struct iKid.ContentView
#Preview {
    ContentView()
}



