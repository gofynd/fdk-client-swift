

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: WeightResponseSchema1
        Used By: Catalog
    */

    class WeightResponseSchema1: Codable {
        
        
        public var shipping: Double?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipping = "shipping"
            
            case unit = "unit"
            
        }

        public init(shipping: Double? = nil, unit: String? = nil) {
            
            self.shipping = shipping
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shipping = try container.decode(Double.self, forKey: .shipping)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipping, forKey: .shipping)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: WeightResponseSchema1
        Used By: Catalog
    */

    class WeightResponseSchema1: Codable {
        
        
        public var shipping: Double?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipping = "shipping"
            
            case unit = "unit"
            
        }

        public init(shipping: Double? = nil, unit: String? = nil) {
            
            self.shipping = shipping
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shipping = try container.decode(Double.self, forKey: .shipping)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipping, forKey: .shipping)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}


