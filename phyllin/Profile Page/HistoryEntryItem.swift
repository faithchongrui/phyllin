//
//  HistoryEntryItem.swift
//  phyllin
//
//  Created by Nikola Winata on 7/9/22.
//

import SwiftUI

struct HistoryEntryItem: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Tote Bag")
                    .foregroundColor(Color.white)
                    .fontWeight(.semibold)
                Text("Spacious and strong bag.")
                    .foregroundColor(Color.white)
            }
            .frame(width: getRelativeWidth(337), height: getRelativeHeight(72))
            .background(.gray)
        }

    }
}

struct HistoryEntryItem_Previews: PreviewProvider {
    static var previews: some View {
        HistoryEntryItem()
    }
}
