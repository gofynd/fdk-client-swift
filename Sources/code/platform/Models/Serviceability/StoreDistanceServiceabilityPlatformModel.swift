

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StoreDistance
        Used By: Serviceability
    */

    class StoreDistance: Codable {
        
        
        public var value: Double?
        
        public var unit: String?
        
        public var reason: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case unit = "unit"
            
            case reason = "reason"
            
        }

        public init(reason: String? = nil, unit: String? = nil, value: Double? = nil) {
            
            self.value = value
            
            self.unit = unit
            
            self.reason = reason
            
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
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StoreDistance
        Used By: Serviceability
    */

    class StoreDistance: Codable {
        
        
        public var value: Double?
        
        public var unit: String?
        
        public var reason: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case unit = "unit"
            
            case reason = "reason"
            
        }

        public init(reason: String? = nil, unit: String? = nil, value: Double? = nil) {
            
            self.value = value
            
            self.unit = unit
            
            self.reason = reason
            
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
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
        }
        
    }
}


