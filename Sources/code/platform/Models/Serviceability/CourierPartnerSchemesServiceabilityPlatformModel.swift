

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerSchemes
        Used By: Serviceability
    */

    class CourierPartnerSchemes: Codable {
        
        
        public var values: [CourierPartnerScheme]?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case values = "values"
            
            case type = "type"
            
        }

        public init(type: String? = nil, values: [CourierPartnerScheme]? = nil) {
            
            self.values = values
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    values = try container.decode([CourierPartnerScheme].self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerSchemes
        Used By: Serviceability
    */

    class CourierPartnerSchemes: Codable {
        
        
        public var values: [CourierPartnerScheme]?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case values = "values"
            
            case type = "type"
            
        }

        public init(type: String? = nil, values: [CourierPartnerScheme]? = nil) {
            
            self.values = values
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    values = try container.decode([CourierPartnerScheme].self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


