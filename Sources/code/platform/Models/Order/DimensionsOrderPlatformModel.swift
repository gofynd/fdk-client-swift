

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Dimensions
        Used By: Order
    */

    class Dimensions: Codable {
        
        
        public var height: Double?
        
        public var width: Double?
        
        public var isDefault: Bool?
        
        public var unit: String?
        
        public var length: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case width = "width"
            
            case isDefault = "is_default"
            
            case unit = "unit"
            
            case length = "length"
            
        }

        public init(height: Double? = nil, isDefault: Bool? = nil, length: Double? = nil, unit: String? = nil, width: Double? = nil) {
            
            self.height = height
            
            self.width = width
            
            self.isDefault = isDefault
            
            self.unit = unit
            
            self.length = length
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    height = try container.decode(Double.self, forKey: .height)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    width = try container.decode(Double.self, forKey: .width)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
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
                    length = try container.decode(Double.self, forKey: .length)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(height, forKey: .height)
            
            
            
            
            try? container.encode(width, forKey: .width)
            
            
            
            
            try? container.encode(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encode(unit, forKey: .unit)
            
            
            
            
            try? container.encode(length, forKey: .length)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Dimensions
        Used By: Order
    */

    class Dimensions: Codable {
        
        
        public var height: Double?
        
        public var width: Double?
        
        public var isDefault: Bool?
        
        public var unit: String?
        
        public var length: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case width = "width"
            
            case isDefault = "is_default"
            
            case unit = "unit"
            
            case length = "length"
            
        }

        public init(height: Double? = nil, isDefault: Bool? = nil, length: Double? = nil, unit: String? = nil, width: Double? = nil) {
            
            self.height = height
            
            self.width = width
            
            self.isDefault = isDefault
            
            self.unit = unit
            
            self.length = length
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    height = try container.decode(Double.self, forKey: .height)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    width = try container.decode(Double.self, forKey: .width)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
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
                    length = try container.decode(Double.self, forKey: .length)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(height, forKey: .height)
            
            
            
            
            try? container.encode(width, forKey: .width)
            
            
            
            
            try? container.encode(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encode(unit, forKey: .unit)
            
            
            
            
            try? container.encode(length, forKey: .length)
            
            
        }
        
    }
}


