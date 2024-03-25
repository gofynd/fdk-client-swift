

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: TicketHistoryPayload
        Used By: Lead
    */

    class TicketHistoryPayload: Codable {
        
        
        public var value: [String: Any]
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(type: String, value: [String: Any]) {
            
            self.value = value
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode([String: Any].self, forKey: .value)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: TicketHistoryPayload
        Used By: Lead
    */

    class TicketHistoryPayload: Codable {
        
        
        public var value: [String: Any]
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(type: String, value: [String: Any]) {
            
            self.value = value
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode([String: Any].self, forKey: .value)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


