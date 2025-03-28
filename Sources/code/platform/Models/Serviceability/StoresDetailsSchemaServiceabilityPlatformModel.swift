

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StoresDetailsSchema
        Used By: Serviceability
    */

    class StoresDetailsSchema: Codable {
        
        
        public var type: String
        
        public var values: [StoreValueDetailsSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case values = "values"
            
        }

        public init(type: String, values: [StoreValueDetailsSchema]) {
            
            self.type = type
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                values = try container.decode([StoreValueDetailsSchema].self, forKey: .values)
                
            
            
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
        Model: StoresDetailsSchema
        Used By: Serviceability
    */

    class StoresDetailsSchema: Codable {
        
        
        public var type: String
        
        public var values: [StoreValueDetailsSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case values = "values"
            
        }

        public init(type: String, values: [StoreValueDetailsSchema]) {
            
            self.type = type
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                values = try container.decode([StoreValueDetailsSchema].self, forKey: .values)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}


