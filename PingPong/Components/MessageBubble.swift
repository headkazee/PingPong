//
//  MessageBubble.swift
//  PingPong
//
//  Created by Jayvee Ballesteros on 2022/07/07.
//

import SwiftUI

struct MessageBubble: View {
	var message: Message

	@State private var showTime = false

    var body: some View {

			VStack(alignment: message.received ? .leading : .trailing) {
				HStack {
					Text("\(message.text)")
						.padding()
						.background(message.received ? Color(.white).opacity(0.2) : Color("Cyan"))
						.cornerRadius(30)
						.foregroundColor(message.received ? .white : .black)

				}
				.frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
				.onTapGesture {
					showTime.toggle()
				}
				if showTime {
					Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
						.font(.caption)
						.foregroundColor(.white)
						.padding(message.received ? .leading : .trailing)
				}
			}
			.frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
			.padding(message.received ? .leading : .trailing)
		.padding(.horizontal, 10)
		
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
		MessageBubble(message: Message(id: "123", text: "Hi jayvee", received: true, timestamp: Date()))
			.background(Color("Background"))
    }
}
