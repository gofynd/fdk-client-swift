

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ShipmentsErrorResult
        Used By: Serviceability
    */

    class ShipmentsErrorResult: Codable {
        
        
        public var message: String?
        
        public var type: String
        
        public var value: String
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case type = "type"
            
            case value = "value"
            
        }

        public init(message: String? = nil, type: String, value: String) {
            
            self.message = message
            
            self.type = type
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ShipmentsErrorResult
        Used By: Serviceability
    */

    class ShipmentsErrorResult: Codable {
        
        
        public var message: String?
        
        public var type: String
        
        public var value: String
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case type = "type"
            
            case value = "value"
            
        }

        public init(message: String? = nil, type: String, value: String) {
            
            self.message = message
            
            self.type = type
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}


