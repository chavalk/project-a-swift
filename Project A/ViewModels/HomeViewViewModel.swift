//
//  HomeViewViewModel.swift
//  Project A
//
//  Created by Jose Garcia on 1/9/23.
//

import Foundation
import Combine

final class HomeViewViewModel: ObservableObject {
    
    @Published var error: String?
    @Published var table: [Table] = []
    
    private var subscriptions: Set<AnyCancellable> = []
    
    func fetchTables() {
        DatabaseManager.shared.collectionTables()
            .sink { [weak self] completion in
                if case .failure(let error) = completion {
                    self?.error = error.localizedDescription
                }
            } receiveValue: { [weak self] retrievedTables in
                self?.table = retrievedTables
            }
            .store(in: &subscriptions)
    }
}
