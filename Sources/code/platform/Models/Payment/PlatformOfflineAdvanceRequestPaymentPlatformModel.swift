

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PlatformOfflineAdvanceRequest
        Used By: Payment
    */

    class PlatformOfflineAdvanceRequest: Codable {
        
        
        public var businessUnit: String?
        
        public var items: [OfflineAdvanceConfig]?
        
        public var device: OfflineAdvanceDevice?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case items = "items"
            
            case device = "device"
            
        }

        public init(businessUnit: String? = nil, device: OfflineAdvanceDevice? = nil, items: [OfflineAdvanceConfig]? = nil) {
            
            self.businessUnit = businessUnit
            
            self.items = items
            
            self.device = device
            
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
                    items = try container.decode([OfflineAdvanceConfig].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    device = try container.decode(OfflineAdvanceDevice.self, forKey: .device)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
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
        Model: PlatformOfflineAdvanceRequest
        Used By: Payment
    */

    class PlatformOfflineAdvanceRequest: Codable {
        
        
        public var businessUnit: String?
        
        public var items: [OfflineAdvanceConfig]?
        
        public var device: OfflineAdvanceDevice?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case items = "items"
            
            case device = "device"
            
        }

        public init(businessUnit: String? = nil, device: OfflineAdvanceDevice? = nil, items: [OfflineAdvanceConfig]? = nil) {
            
            self.businessUnit = businessUnit
            
            self.items = items
            
            self.device = device
            
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
                    items = try container.decode([OfflineAdvanceConfig].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    device = try container.decode(OfflineAdvanceDevice.self, forKey: .device)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(device, forKey: .device)
            
            
        }
        
    }
}


