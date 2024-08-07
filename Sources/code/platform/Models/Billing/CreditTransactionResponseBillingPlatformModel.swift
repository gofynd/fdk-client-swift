

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: CreditTransactionResponse
        Used By: Billing
    */

    class CreditTransactionResponse: Codable {
        
        
        public var total: Int?
        
        public var limit: Int?
        
        public var page: Int?
        
        public var pages: Int?
        
        public var items: [CreditTransaction]?
        

        public enum CodingKeys: String, CodingKey {
            
            case total = "total"
            
            case limit = "limit"
            
            case page = "page"
            
            case pages = "pages"
            
            case items = "items"
            
        }

        public init(items: [CreditTransaction]? = nil, limit: Int? = nil, page: Int? = nil, pages: Int? = nil, total: Int? = nil) {
            
            self.total = total
            
            self.limit = limit
            
            self.page = page
            
            self.pages = pages
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    limit = try container.decode(Int.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Int.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pages = try container.decode(Int.self, forKey: .pages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([CreditTransaction].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}




