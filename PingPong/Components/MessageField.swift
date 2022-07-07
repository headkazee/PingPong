//
//  MessageField.swift
//  PingPong
//
//  Created by Jayvee Ballesteros on 2022/07/07.
//

import SwiftUI

struct MessageField: View {
	@EnvironmentObject var messagesManager: MessagesManager
	@State private var message = ""

	var body: some View {
		HStack {
			TextField("Enter", text: $message, axis: .vertical)
				.foregroundColor(.white)

			Button(action: {
				messagesManager.sendMessage(text: message)
				message = ""
			}) {
				Image(systemName: "paperplane.fill")
					.foregroundColor(.white)
					.padding(10)
					.background(Color("Cyan"))
					.clipShape(Circle())
			}


		}
		.padding(.horizontal)
		.padding(.vertical, 10)
		.background(.white.opacity(0.1))
		.cornerRadius(50)
		.padding()
	}
}

struct MessageField_Previews: PreviewProvider {
	static var previews: some View {
		MessageField()
			.environmentObject(MessagesManager())
	}
}

