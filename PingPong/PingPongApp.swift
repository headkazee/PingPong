//
//  PingPongApp.swift
//  PingPong
//
//  Created by Jayvee Ballesteros on 2022/07/07.
//

import SwiftUI
import Firebase

@main
struct PingPongApp: App {

	init() {
		FirebaseApp.configure()
	}
	
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
