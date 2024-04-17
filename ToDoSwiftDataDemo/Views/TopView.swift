//
//  TopView.swift
//  ToDoSwiftDataDemo
//
//  Created by Thongchai Subsaidee on 16/4/24.
//

import SwiftUI

struct TopView: View {
    @Binding var showSlideView:Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            SlideBarIconA(show: $showSlideView)
            Text("Note")
                .font(.largeTitle)
                .bold()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
        .padding(.top)
    }
}

#Preview {
    TopView(showSlideView: .constant(true))
}
