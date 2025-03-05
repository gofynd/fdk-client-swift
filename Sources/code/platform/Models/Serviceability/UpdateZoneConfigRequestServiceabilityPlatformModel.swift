

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: UpdateZoneConfigRequest
        Used By: Serviceability
    */

    class UpdateZoneConfigRequest: Codable {
        
        
        public var serviceabilityType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
        }

        public init(serviceabilityType: String? = nil) {
            
            self.serviceabilityType = serviceabilityType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: UpdateZoneConfigRequest
        Used By: Serviceability
    */

    class UpdateZoneConfigRequest: Codable {
        
        
        public var serviceabilityType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
        }

        public init(serviceabilityType: String? = nil) {
            
            self.serviceabilityType = serviceabilityType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
        }
        
    }
}


