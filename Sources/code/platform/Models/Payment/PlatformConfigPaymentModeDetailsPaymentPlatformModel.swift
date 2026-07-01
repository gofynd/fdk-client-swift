

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PlatformConfigPaymentModeDetails
        Used By: Payment
    */

    class PlatformConfigPaymentModeDetails: Codable {
        
        
        public var businessUnit: String?
        
        public var device: String?
        
        public var fulfillmentOptions: [String: Any]?
        
        public var isActive: Bool?
        
        public var items: [PlatformPaymentModeItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case device = "device"
            
            case fulfillmentOptions = "fulfillment_options"
            
            case isActive = "is_active"
            
            case items = "items"
            
        }

        public init(businessUnit: String? = nil, device: String? = nil, fulfillmentOptions: [String: Any]? = nil, isActive: Bool? = nil, items: [PlatformPaymentModeItem]? = nil) {
            
            self.businessUnit = businessUnit
            
            self.device = device
            
            self.fulfillmentOptions = fulfillmentOptions
            
            self.isActive = isActive
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    device = try container.decode(String.self, forKey: .device)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentOptions = try container.decode([String: Any].self, forKey: .fulfillmentOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([PlatformPaymentModeItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(device, forKey: .device)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOptions, forKey: .fulfillmentOptions)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PlatformConfigPaymentModeDetails
        Used By: Payment
    */

    class PlatformConfigPaymentModeDetails: Codable {
        
        
        public var businessUnit: String?
        
        public var device: String?
        
        public var fulfillmentOptions: [String: Any]?
        
        public var isActive: Bool?
        
        public var items: [PlatformPaymentModeItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case device = "device"
            
            case fulfillmentOptions = "fulfillment_options"
            
            case isActive = "is_active"
            
            case items = "items"
            
        }

        public init(businessUnit: String? = nil, device: String? = nil, fulfillmentOptions: [String: Any]? = nil, isActive: Bool? = nil, items: [PlatformPaymentModeItem]? = nil) {
            
            self.businessUnit = businessUnit
            
            self.device = device
            
            self.fulfillmentOptions = fulfillmentOptions
            
            self.isActive = isActive
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    device = try container.decode(String.self, forKey: .device)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentOptions = try container.decode([String: Any].self, forKey: .fulfillmentOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([PlatformPaymentModeItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(device, forKey: .device)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOptions, forKey: .fulfillmentOptions)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


