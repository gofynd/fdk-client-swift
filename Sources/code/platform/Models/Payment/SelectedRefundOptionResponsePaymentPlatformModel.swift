

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SelectedRefundOptionResponse
        Used By: Payment
    */

    class SelectedRefundOptionResponse: Codable {
        
        
        public var transferMode: [String: Any]
        
        public var shipmentId: String
        
        public var message: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case transferMode = "transfer_mode"
            
            case shipmentId = "shipment_id"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(message: String, shipmentId: String, success: Bool, transferMode: [String: Any]) {
            
            self.transferMode = transferMode
            
            self.shipmentId = shipmentId
            
            self.message = message
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                transferMode = try container.decode([String: Any].self, forKey: .transferMode)
                
            
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SelectedRefundOptionResponse
        Used By: Payment
    */

    class SelectedRefundOptionResponse: Codable {
        
        
        public var transferMode: [String: Any]
        
        public var shipmentId: String
        
        public var message: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case transferMode = "transfer_mode"
            
            case shipmentId = "shipment_id"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(message: String, shipmentId: String, success: Bool, transferMode: [String: Any]) {
            
            self.transferMode = transferMode
            
            self.shipmentId = shipmentId
            
            self.message = message
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                transferMode = try container.decode([String: Any].self, forKey: .transferMode)
                
            
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


