//
//  DatabaseManager.swift
//  Project A
//
//  Created by Jose Garcia on 1/9/23.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift
import FirebaseFirestoreCombineSwift
import Combine

class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    let db = Firestore.firestore()
    let tablesPath: String = "tables"
    
    func collectionTables() -> AnyPublisher<[Table], Error> {
        db.collection(tablesPath).order(by: "number", descending: false).getDocuments()
            .tryMap(\.documents)
            .tryMap { snapshots in
                try snapshots.map({
                    try $0.data(as: Table.self)
                })
            }
            .eraseToAnyPublisher()
    }
}
