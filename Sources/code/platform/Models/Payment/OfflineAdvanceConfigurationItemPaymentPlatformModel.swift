

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OfflineAdvanceConfigurationItem
        Used By: Payment
    */

    class OfflineAdvanceConfigurationItem: Codable {
        
        
        public var displayName: String?
        
        public var businessUnit: String?
        
        public var config: OfflineAdvanceConfig?
        
        public var device: OfflineAdvanceDevice?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case businessUnit = "business_unit"
            
            case config = "config"
            
            case device = "device"
            
        }

        public init(businessUnit: String? = nil, config: OfflineAdvanceConfig? = nil, device: OfflineAdvanceDevice? = nil, displayName: String? = nil) {
            
            self.displayName = displayName
            
            self.businessUnit = businessUnit
            
            self.config = config
            
            self.device = device
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode(OfflineAdvanceConfig.self, forKey: .config)
                
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
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(device, forKey: .device)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OfflineAdvanceConfigurationItem
        Used By: Payment
    */

    class OfflineAdvanceConfigurationItem: Codable {
        
        
        public var displayName: String?
        
        public var businessUnit: String?
        
        public var config: OfflineAdvanceConfig?
        
        public var device: OfflineAdvanceDevice?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case businessUnit = "business_unit"
            
            case config = "config"
            
            case device = "device"
            
        }

        public init(businessUnit: String? = nil, config: OfflineAdvanceConfig? = nil, device: OfflineAdvanceDevice? = nil, displayName: String? = nil) {
            
            self.displayName = displayName
            
            self.businessUnit = businessUnit
            
            self.config = config
            
            self.device = device
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode(OfflineAdvanceConfig.self, forKey: .config)
                
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
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(device, forKey: .device)
            
            
        }
        
    }
}


