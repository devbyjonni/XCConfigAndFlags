//
//  ContentView.swift
//  XCConfigAndFlags
//
//  Created by Jonni Akesson on 2022-08-03.
//

import SwiftUI

struct ContentView: View {

    private var title: String
    private var urlStr: String

    init() {
#if DEV
        title = "DEV"
        urlStr = try! Configuration.value(for: "CT_HELP_SITE")
#elseif DEBUG
        title = "DEBUG"
        urlStr = try! Configuration.value(for: "CT_HELP_SITE")
#else
        title = "RELEASE"
        urlStr = try! Configuration.value(for: "CT_HELP_SITE")
#endif
    }
    
    var body: some View {
        VStack {
            if let urlStr = urlStr {
                Link(title, destination: URL(string: "https://\(urlStr)")!)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color.accentColor)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
