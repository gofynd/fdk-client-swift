

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ListViewProductV2
        Used By: Serviceability
    */

    class ListViewProductV2: Codable {
        
        
        public var type: String
        
        public var values: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case values = "values"
            
        }

        public init(type: String, values: [String]) {
            
            self.type = type
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                values = try container.decode([String].self, forKey: .values)
                
            
            
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
        Model: ListViewProductV2
        Used By: Serviceability
    */

    class ListViewProductV2: Codable {
        
        
        public var type: String
        
        public var values: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case values = "values"
            
        }

        public init(type: String, values: [String]) {
            
            self.type = type
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                values = try container.decode([String].self, forKey: .values)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}


