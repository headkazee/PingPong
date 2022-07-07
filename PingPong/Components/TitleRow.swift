//
//  TitleRow.swift
//  PingPong
//
//  Created by Jayvee Ballesteros on 2022/07/07.
//

import SwiftUI

struct TitleRow: View {
 // MARK: - PROPERTY
	let imageURL = URL(string: "https://contents.pep.ph/images2/images2/2019/11/05/lisa-mainimage-pep-1572937885.jpg")

	let name = "Lisa Manoban"
 // MARK: - BODY
    var body: some View {
		HStack(spacing: 20) {
			AsyncImage(url: imageURL) { image in
				image.resizable()
					.aspectRatio(contentMode: .fill)
			} placeholder: {
				ProgressView()
			}
			.frame(width: 50, height: 50)
			.clipShape(Circle())

			VStack(alignment: .leading) {
				Text(name)
					.font(.title.bold())
					.foregroundColor(.white)
				Text("Online")
					.font(.caption)
					.foregroundColor(.white)
			}
			.frame(maxWidth: .infinity)

			Spacer()

			Image(systemName: "phone.fill")
				.foregroundColor(.gray)
				.padding(10)
				.background(.white)
				.cornerRadius(50)
		}
		.padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
			.background(Image("background"))
    }
}
