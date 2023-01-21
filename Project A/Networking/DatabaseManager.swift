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
    
    func collectionTables(retrieve id: String) -> AnyPublisher<Table, Error> {
        db.collection(tablesPath).document(id).getDocument()
            .tryMap { try $0.data(as: Table.self) }
            .eraseToAnyPublisher()
    }
    
    func collectionTables(retrieve1 id: String) -> AnyPublisher<Table1, Error> {
        db.collection(tablesPath).document(id).getDocument()
            .tryMap { try $0.data(as: Table1.self) }
            .eraseToAnyPublisher()
    }
}
