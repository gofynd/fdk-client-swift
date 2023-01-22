

import Foundation
public extension ApplicationClient {
    /*
        Model: AssignStoreResponse
        Used By: Logistic
    */
    class AssignStoreResponse: Codable {
        
        public var pystormbreakerUuid: String
        
        public var article: [String: Any]
        
        public var articles: [[String: Any]]?
        
        public var pageSize: Int
        
        public var pageNo: Int
        
        public var toPincode: String
        
        public var company: [String: Any]
        
        public var store: [String: Any]
        
        public var assignedStores: [[String: Any]]
        
        public var error: [String: Any]
        
        public var items: [String: Any]
        
        public var customerDetails: [String: Any]
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case pystormbreakerUuid = "pystormbreaker_uuid"
            
            case article = "article"
            
            case articles = "articles"
            
            case pageSize = "page_size"
            
            case pageNo = "page_no"
            
            case toPincode = "to_pincode"
            
            case company = "company"
            
            case store = "store"
            
            case assignedStores = "assigned_stores"
            
            case error = "error"
            
            case items = "items"
            
            case customerDetails = "customer_details"
            
            case success = "success"
            
        }

        public init(article: [String: Any], articles: [[String: Any]]? = nil, assignedStores: [[String: Any]], company: [String: Any], customerDetails: [String: Any], error: [String: Any], items: [String: Any], pageNo: Int, pageSize: Int, pystormbreakerUuid: String, store: [String: Any], success: Bool, toPincode: String) {
            
            self.pystormbreakerUuid = pystormbreakerUuid
            
            self.article = article
            
            self.articles = articles
            
            self.pageSize = pageSize
            
            self.pageNo = pageNo
            
            self.toPincode = toPincode
            
            self.company = company
            
            self.store = store
            
            self.assignedStores = assignedStores
            
            self.error = error
            
            self.items = items
            
            self.customerDetails = customerDetails
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            pystormbreakerUuid = try container.decode(String.self, forKey: .pystormbreakerUuid)
            
            
            
            
            article = try container.decode([String: Any].self, forKey: .article)
            
            
            
            
            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            pageSize = try container.decode(Int.self, forKey: .pageSize)
            
            
            
            
            pageNo = try container.decode(Int.self, forKey: .pageNo)
            
            
            
            
            toPincode = try container.decode(String.self, forKey: .toPincode)
            
            
            
            
            company = try container.decode([String: Any].self, forKey: .company)
            
            
            
            
            store = try container.decode([String: Any].self, forKey: .store)
            
            
            
            
            assignedStores = try container.decode([[String: Any]].self, forKey: .assignedStores)
            
            
            
            
            error = try container.decode([String: Any].self, forKey: .error)
            
            
            
            
            items = try container.decode([String: Any].self, forKey: .items)
            
            
            
            
            customerDetails = try container.decode([String: Any].self, forKey: .customerDetails)
            
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pystormbreakerUuid, forKey: .pystormbreakerUuid)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
            
            
            
            
            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(assignedStores, forKey: .assignedStores)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}
