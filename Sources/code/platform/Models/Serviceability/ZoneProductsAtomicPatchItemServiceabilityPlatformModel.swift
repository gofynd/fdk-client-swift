

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneProductsAtomicPatchItem
        Used By: Serviceability
    */

    class ZoneProductsAtomicPatchItem: Codable {
        
        
        public var zoneId: String
        
        public var productType: String
        
        public var values: [[String: Any]]
        
        public var action: String
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case productType = "product_type"
            
            case values = "values"
            
            case action = "action"
            
        }

        public init(action: String, productType: String, values: [[String: Any]], zoneId: String) {
            
            self.zoneId = zoneId
            
            self.productType = productType
            
            self.values = values
            
            self.action = action
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                productType = try container.decode(String.self, forKey: .productType)
                
            
            
            
                values = try container.decode([[String: Any]].self, forKey: .values)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(productType, forKey: .productType)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneProductsAtomicPatchItem
        Used By: Serviceability
    */

    class ZoneProductsAtomicPatchItem: Codable {
        
        
        public var zoneId: String
        
        public var productType: String
        
        public var values: [[String: Any]]
        
        public var action: String
        

        public enum CodingKeys: String, CodingKey {
            
            case zoneId = "zone_id"
            
            case productType = "product_type"
            
            case values = "values"
            
            case action = "action"
            
        }

        public init(action: String, productType: String, values: [[String: Any]], zoneId: String) {
            
            self.zoneId = zoneId
            
            self.productType = productType
            
            self.values = values
            
            self.action = action
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                productType = try container.decode(String.self, forKey: .productType)
                
            
            
            
                values = try container.decode([[String: Any]].self, forKey: .values)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(productType, forKey: .productType)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
}


