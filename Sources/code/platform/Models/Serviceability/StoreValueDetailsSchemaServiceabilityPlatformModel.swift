

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StoreValueDetailsSchema
        Used By: Serviceability
    */

    class StoreValueDetailsSchema: Codable {
        
        
        public var text: String
        
        public var value: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
        }

        public init(text: String, value: Int) {
            
            self.text = text
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                text = try container.decode(String.self, forKey: .text)
                
            
            
            
                value = try container.decode(Int.self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StoreValueDetailsSchema
        Used By: Serviceability
    */

    class StoreValueDetailsSchema: Codable {
        
        
        public var text: String
        
        public var value: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case text = "text"
            
            case value = "value"
            
        }

        public init(text: String, value: Int) {
            
            self.text = text
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                text = try container.decode(String.self, forKey: .text)
                
            
            
            
                value = try container.decode(Int.self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}


