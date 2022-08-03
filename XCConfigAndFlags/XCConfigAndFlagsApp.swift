//
//  XCConfigAndFlagsApp.swift
//  XCConfigAndFlags
//
//  Created by Jonni Akesson on 2022-08-03.
//

import SwiftUI

@main
struct XCConfigAndFlagsApp: App {

    init() {
        #if DEV
        print("DEV")
        #elseif DEBUG
        print("DEBUG")
        #else
        print("RELEASE")
        #endif
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
