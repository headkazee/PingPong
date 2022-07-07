//
//  Message.swift
//  PingPong
//
//  Created by Jayvee Ballesteros on 2022/07/07.
//

import Foundation

struct Message: Identifiable, Codable {
	var id: String
	var text: String
	var received: Bool
	var timestamp: Date
}
