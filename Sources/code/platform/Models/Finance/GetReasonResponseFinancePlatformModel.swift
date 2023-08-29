

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: GetReasonResponse
        Used By: Finance
    */

    class GetReasonResponse: Codable {
        
        
        public var success: Bool?
        
        public var itemList: [ReasonItem]?
        
        public var itemCount: Int?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case itemList = "item_list"
            
            case itemCount = "item_count"
            
            case page = "page"
            
        }

        public init(itemCount: Int? = nil, itemList: [ReasonItem]? = nil, page: Page? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.itemList = itemList
            
            self.itemCount = itemCount
            
            self.page = page
            
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
                    itemList = try container.decode([ReasonItem].self, forKey: .itemList)
                
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
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(itemList, forKey: .itemList)
            
            
            
            
            try? container.encodeIfPresent(itemCount, forKey: .itemCount)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}




