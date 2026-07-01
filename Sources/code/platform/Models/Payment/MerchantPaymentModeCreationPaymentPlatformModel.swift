

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: MerchantPaymentModeCreation
        Used By: Payment
    */

    class MerchantPaymentModeCreation: Codable {
        
        
        public var businessUnit: String
        
        public var items: [[String: Any]]
        
        public var device: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case items = "items"
            
            case device = "device"
            
        }

        public init(businessUnit: String, device: [String: Any], items: [[String: Any]]) {
            
            self.businessUnit = businessUnit
            
            self.items = items
            
            self.device = device
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
            
            
            
                items = try container.decode([[String: Any]].self, forKey: .items)
                
            
            
            
                device = try container.decode([String: Any].self, forKey: .device)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(device, forKey: .device)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: MerchantPaymentModeCreation
        Used By: Payment
    */

    class MerchantPaymentModeCreation: Codable {
        
        
        public var businessUnit: String
        
        public var items: [[String: Any]]
        
        public var device: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case items = "items"
            
            case device = "device"
            
        }

        public init(businessUnit: String, device: [String: Any], items: [[String: Any]]) {
            
            self.businessUnit = businessUnit
            
            self.items = items
            
            self.device = device
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
            
            
            
                items = try container.decode([[String: Any]].self, forKey: .items)
                
            
            
            
                device = try container.decode([String: Any].self, forKey: .device)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(device, forKey: .device)
            
            
        }
        
    }
}


