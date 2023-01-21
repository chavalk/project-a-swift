//
//  TableViewViewModel.swift
//  Project A
//
//  Created by Jose Garcia on 1/21/23.
//

import Foundation
import Combine

final class TableViewViewModel: ObservableObject {
    
    @Published var table1: Table1?
    @Published var error: String?
    
    private var subscriptions: Set<AnyCancellable> = []
    
    func retrieveTable1(with id: String) {
        DatabaseManager.shared.collectionTables(retrieve1: id)
            .sink { [weak self] completion in
                if case .failure(let error) = completion {
                    self?.error = error.localizedDescription
                }
            } receiveValue: { [weak self] table1 in
                self?.table1 = table1
            }
            .store(in: &subscriptions)
    }
}
