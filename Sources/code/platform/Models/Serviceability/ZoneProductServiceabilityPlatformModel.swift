

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneProduct
        Used By: Serviceability
    */

    class ZoneProduct: Codable {
        
        
        public var type: [String: Any]
        
        public var values: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case values = "values"
            
        }

        public init(type: [String: Any], values: [String: Any]) {
            
            self.type = type
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode([String: Any].self, forKey: .type)
                
            
            
            
                values = try container.decode([String: Any].self, forKey: .values)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneProduct
        Used By: Serviceability
    */

    class ZoneProduct: Codable {
        
        
        public var type: [String: Any]
        
        public var values: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case values = "values"
            
        }

        public init(type: [String: Any], values: [String: Any]) {
            
            self.type = type
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode([String: Any].self, forKey: .type)
                
            
            
            
                values = try container.decode([String: Any].self, forKey: .values)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}


