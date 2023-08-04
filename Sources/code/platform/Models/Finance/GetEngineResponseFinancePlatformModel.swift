

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: GetEngineResponse
        Used By: Finance
    */

    class GetEngineResponse: Codable {
        
        
        public var success: Bool?
        
        public var items: [[String: Any]]?
        
        public var page: Page?
        
        public var itemCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case items = "items"
            
            case page = "page"
            
            case itemCount = "item_count"
            
        }

        public init(items: [[String: Any]]? = nil, itemCount: Int? = nil, page: Page? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.items = items
            
            self.page = page
            
            self.itemCount = itemCount
            
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
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCount = try container.decode(Int.self, forKey: .itemCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(itemCount, forKey: .itemCount)
            
            
        }
        
    }
}




