

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: ActivePromosResult
        Used By: Cart
    */

    class ActivePromosResult: Codable {
        
        
        public var status: String?
        
        public var items: [ActivePromos]?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case items = "items"
            
        }

        public init(items: [ActivePromos]? = nil, status: String? = nil) {
            
            self.status = status
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([ActivePromos].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


