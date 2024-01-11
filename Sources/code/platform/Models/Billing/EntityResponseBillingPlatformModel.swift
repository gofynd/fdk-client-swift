

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: EntityResponse
        Used By: Billing
    */

    class EntityResponse: Codable {
        
        
        public var success: Bool?
        
        public var page: Int?
        
        public var pageSize: Int?
        
        public var items: [Details]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case page = "page"
            
            case pageSize = "page_size"
            
            case items = "items"
            
        }

        public init(items: [Details]? = nil, page: Int? = nil, pageSize: Int? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.page = page
            
            self.pageSize = pageSize
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
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
                    pageSize = try container.decode(Int.self, forKey: .pageSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([Details].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}




