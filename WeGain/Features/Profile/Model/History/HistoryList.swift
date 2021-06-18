//
//  HistoryList.swift
//  WeGain
//
//  Created by Andrean Lay on 18/06/21.
//

import SwiftUI

class HistoryList: ObservableObject {
    @Published var histories = [History]()
    
    init() {
        self.updateHistories()
    }
    
    func updateHistories() {
        self.histories = HistoryRepository.shared.fetch()
    }
}
