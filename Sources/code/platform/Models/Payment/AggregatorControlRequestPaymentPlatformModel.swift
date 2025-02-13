

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AggregatorControlRequest
        Used By: Payment
    */

    class AggregatorControlRequest: Codable {
        
        
        public var businessUnit: String?
        
        public var items: [[String: Any]]?
        
        public var device: String?
        
        public var version: AggregatorVersionRequestSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case items = "items"
            
            case device = "device"
            
            case version = "version"
            
        }

        public init(businessUnit: String? = nil, device: String? = nil, items: [[String: Any]]? = nil, version: AggregatorVersionRequestSchema? = nil) {
            
            self.businessUnit = businessUnit
            
            self.items = items
            
            self.device = device
            
            self.version = version
            
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
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
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
                    version = try container.decode(AggregatorVersionRequestSchema.self, forKey: .version)
                
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
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AggregatorControlRequest
        Used By: Payment
    */

    class AggregatorControlRequest: Codable {
        
        
        public var businessUnit: String?
        
        public var items: [[String: Any]]?
        
        public var device: String?
        
        public var version: AggregatorVersionRequestSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case items = "items"
            
            case device = "device"
            
            case version = "version"
            
        }

        public init(businessUnit: String? = nil, device: String? = nil, items: [[String: Any]]? = nil, version: AggregatorVersionRequestSchema? = nil) {
            
            self.businessUnit = businessUnit
            
            self.items = items
            
            self.device = device
            
            self.version = version
            
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
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
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
                    version = try container.decode(AggregatorVersionRequestSchema.self, forKey: .version)
                
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
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
        }
        
    }
}


