

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: StoreDetailsResponseObject
        Used By: Cart
    */

    class StoreDetailsResponseObject: Codable {
        
        
        public var items: [PickupStoreDetail]?
        
        public var data: [PickupStoreDetail]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case data = "data"
            
        }

        public init(data: [PickupStoreDetail]? = nil, items: [PickupStoreDetail]? = nil) {
            
            self.items = items
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([PickupStoreDetail].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode([PickupStoreDetail].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


