//
//  ContentView.swift
//  PingPong
//
//  Created by Jayvee Ballesteros on 2022/07/07.
//

import SwiftUI

struct ContentView: View {
	@StateObject var messagesManager = MessagesManager()
	var messageArray = ["Hello you", "Howre u doin?", "Ive been building SwiftUI app."]
    var body: some View {
		VStack(spacing: 0) {
			VStack {
				TitleRow()

				ScrollView {
					ForEach(messagesManager.messages, id: \.id) { message in
						MessageBubble(message: message)

					}
				}
				.padding(.top, 10)
				.background(Color("Background"))
				.cornerRadius(radius: 30, corners: [.topLeft, .topRight])


			}
			.background(Image("Gradient").aspectRatio(contentMode: .fill))

			MessageField()
				.environmentObject(messagesManager)
				.background(Color("Background"))
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
