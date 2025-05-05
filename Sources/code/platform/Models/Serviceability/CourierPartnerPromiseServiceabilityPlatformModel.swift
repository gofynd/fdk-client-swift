

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerPromise
        Used By: Serviceability
    */

    class CourierPartnerPromise: Codable {
        
        
        public var min: String
        
        public var max: String
        
        public var attributes: CourierPartnerAttributes?
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
            case attributes = "attributes"
            
        }

        public init(attributes: CourierPartnerAttributes? = nil, max: String, min: String) {
            
            self.min = min
            
            self.max = max
            
            self.attributes = attributes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                min = try container.decode(String.self, forKey: .min)
                
            
            
            
                max = try container.decode(String.self, forKey: .max)
                
            
            
            
                do {
                    attributes = try container.decode(CourierPartnerAttributes.self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerPromise
        Used By: Serviceability
    */

    class CourierPartnerPromise: Codable {
        
        
        public var min: String
        
        public var max: String
        
        public var attributes: CourierPartnerAttributes?
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
            case attributes = "attributes"
            
        }

        public init(attributes: CourierPartnerAttributes? = nil, max: String, min: String) {
            
            self.min = min
            
            self.max = max
            
            self.attributes = attributes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                min = try container.decode(String.self, forKey: .min)
                
            
            
            
                max = try container.decode(String.self, forKey: .max)
                
            
            
            
                do {
                    attributes = try container.decode(CourierPartnerAttributes.self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
        }
        
    }
}


