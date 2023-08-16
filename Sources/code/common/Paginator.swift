import Foundation
public class Paginator<T> {
    public internal(set) var hasNext: Bool = true
    var type: String
    var pageSize: Int
    var pageId: String?
    var pageNo: Int?
    var onNext: ((_ response: T?, _ error: FDKError?) -> Void)?
    var onPage: (() -> Void)?

    init(pageSize: Int = 20, type: String) {
        self.pageSize = pageSize
        self.type = type.lowercased()
        if type.lowercased() == "cursor" {
            self.pageId = "*"
        } else {
            self.pageNo = 1
        }
    }
    
    public func next(onResponse: @escaping (_ response: T?, _ error: FDKError?) -> Void) {
        self.onNext = onResponse
        self.onPage?()
    }
    
    public func reset() {
        hasNext = true
        if type == "cursor" {
            pageId = "*"
        } else {
            pageNo = 1
        }
    }
}
