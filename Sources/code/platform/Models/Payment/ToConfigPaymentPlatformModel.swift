

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ToConfig
        Used By: Payment
    */

    class ToConfig: Codable {
        
        
        public var device: [[String: Any]]
        
        public var businessUnit: String
        

        public enum CodingKeys: String, CodingKey {
            
            case device = "device"
            
            case businessUnit = "business_unit"
            
        }

        public init(businessUnit: String, device: [[String: Any]]) {
            
            self.device = device
            
            self.businessUnit = businessUnit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                device = try container.decode([[String: Any]].self, forKey: .device)
                
            
            
            
                businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(device, forKey: .device)
            
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ToConfig
        Used By: Payment
    */

    class ToConfig: Codable {
        
        
        public var device: [[String: Any]]
        
        public var businessUnit: String
        

        public enum CodingKeys: String, CodingKey {
            
            case device = "device"
            
            case businessUnit = "business_unit"
            
        }

        public init(businessUnit: String, device: [[String: Any]]) {
            
            self.device = device
            
            self.businessUnit = businessUnit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                device = try container.decode([[String: Any]].self, forKey: .device)
                
            
            
            
                businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(device, forKey: .device)
            
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
        }
        
    }
}


