//
//  HomeViewViewModel.swift
//  Project A
//
//  Created by Jose Garcia on 1/9/23.
//

import Foundation
import Combine

final class HomeViewViewModel: ObservableObject {
    
    @Published var table: Table?
    @Published var error: String?
    
    private var subscriptions: Set<AnyCancellable> = []
    
    func retireveTable(with id: String) {
        DatabaseManager.shared.collectionTables(retrieve: id)
            .sink { [weak self] completion in
                if case .failure(let error) = completion {
                    self?.error = error.localizedDescription
                }
            } receiveValue: { [weak self] table in
                self?.table = table
            }
            .store(in: &subscriptions)
    }
}
