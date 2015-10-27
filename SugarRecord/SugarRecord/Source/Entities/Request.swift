import Foundation

public struct Request<T: Entity> {
    
    // MARK: - Attributes
    
    let sortDescriptor: NSSortDescriptor?
    let predicate: NSPredicate?
    
    
    // MARK: - Init
    
    init(sortDescriptor: NSSortDescriptor? = nil, predicate: NSPredicate? = nil) {
        self.sortDescriptor = sortDescriptor
        self.predicate = predicate
    }
    
    
    // MARK: - Public
    
    
    // MARK: - Internal
    
    func request(withPredicate predicate: NSPredicate) -> Request<T> {
        return Request<T>(sortDescriptor: sortDescriptor, predicate: predicate)
    }
    
    func request(withSortDescriptor sortDescriptor: NSSortDescriptor) -> Request<T> {
        return Request<T>(sortDescriptor: sortDescriptor, predicate: predicate)
    }
}