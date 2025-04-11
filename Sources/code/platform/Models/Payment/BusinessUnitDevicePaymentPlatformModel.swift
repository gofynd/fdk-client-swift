

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: BusinessUnitDevice
        Used By: Payment
    */

    class BusinessUnitDevice: Codable {
        
        
        public var businessUnit: [BusinessUnit]?
        
        public var device: [Device]?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case device = "device"
            
        }

        public init(businessUnit: [BusinessUnit]? = nil, device: [Device]? = nil) {
            
            self.businessUnit = businessUnit
            
            self.device = device
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    businessUnit = try container.decode([BusinessUnit].self, forKey: .businessUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    device = try container.decode([Device].self, forKey: .device)
                
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
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: BusinessUnitDevice
        Used By: Payment
    */

    class BusinessUnitDevice: Codable {
        
        
        public var businessUnit: [BusinessUnit]?
        
        public var device: [Device]?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case device = "device"
            
        }

        public init(businessUnit: [BusinessUnit]? = nil, device: [Device]? = nil) {
            
            self.businessUnit = businessUnit
            
            self.device = device
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    businessUnit = try container.decode([BusinessUnit].self, forKey: .businessUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    device = try container.decode([Device].self, forKey: .device)
                
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
            
            
        }
        
    }
}


