

import Foundation


public extension PlatformClient.Order {
    /*
        Model: WeightData
        Used By: Order
    */

    class WeightData: Codable {
        
        
        public var value: Double?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case unit = "unit"
            
        }

        public init(unit: String? = nil, value: Double? = nil) {
            
            self.value = value
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
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
            
            
            
            try? container.encode(value, forKey: .value)
            
            
            
            
            try? container.encode(unit, forKey: .unit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: WeightData
        Used By: Order
    */

    class WeightData: Codable {
        
        
        public var value: Double?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case unit = "unit"
            
        }

        public init(unit: String? = nil, value: Double? = nil) {
            
            self.value = value
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
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
            
            
            
            try? container.encode(value, forKey: .value)
            
            
            
            
            try? container.encode(unit, forKey: .unit)
            
            
        }
        
    }
}


