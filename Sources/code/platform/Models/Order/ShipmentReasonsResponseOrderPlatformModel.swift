

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentReasonsResponse
        Used By: Order
    */

    class ShipmentReasonsResponse: Codable {
        
        
        public var reasons: [ShipmentResponseReasons]
        
        public var message: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case reasons = "reasons"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(message: String, reasons: [ShipmentResponseReasons], success: Bool) {
            
            self.reasons = reasons
            
            self.message = message
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                reasons = try container.decode([ShipmentResponseReasons].self, forKey: .reasons)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentReasonsResponse
        Used By: Order
    */

    class ShipmentReasonsResponse: Codable {
        
        
        public var reasons: [ShipmentResponseReasons]
        
        public var message: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case reasons = "reasons"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(message: String, reasons: [ShipmentResponseReasons], success: Bool) {
            
            self.reasons = reasons
            
            self.message = message
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                reasons = try container.decode([ShipmentResponseReasons].self, forKey: .reasons)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


