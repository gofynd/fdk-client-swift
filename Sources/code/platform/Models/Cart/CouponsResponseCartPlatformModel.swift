

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponsResponse
        Used By: Cart
    */

    class CouponsResponse: Codable {
        
        
        public var items: [CouponObj]?
        
        public var page: Page?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
            case success = "success"
            
        }

        public init(items: [CouponObj]? = nil, page: Page? = nil, success: Bool? = nil) {
            
            self.items = items
            
            self.page = page
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([CouponObj].self, forKey: .items)
                
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
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


