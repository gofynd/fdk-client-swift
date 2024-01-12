

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ItemCriterias
        Used By: Order
    */

    class ItemCriterias: Codable {
        
        
        public var itemBrand: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemBrand = "item_brand"
            
        }

        public init(itemBrand: [Int]? = nil) {
            
            self.itemBrand = itemBrand
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemBrand = try container.decode([Int].self, forKey: .itemBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ItemCriterias
        Used By: Order
    */

    class ItemCriterias: Codable {
        
        
        public var itemBrand: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemBrand = "item_brand"
            
        }

        public init(itemBrand: [Int]? = nil) {
            
            self.itemBrand = itemBrand
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemBrand = try container.decode([Int].self, forKey: .itemBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)
            
            
        }
        
    }
}


