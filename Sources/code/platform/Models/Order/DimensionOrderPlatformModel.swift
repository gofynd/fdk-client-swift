

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Dimension
        Used By: Order
    */

    class Dimension: Codable {
        
        
        public var packagingType: String?
        
        public var weight: Double?
        
        public var height: Double?
        
        public var length: Double?
        
        public var width: Double?
        
        public var deadWeight: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case packagingType = "packaging_type"
            
            case weight = "weight"
            
            case height = "height"
            
            case length = "length"
            
            case width = "width"
            
            case deadWeight = "dead_weight"
            
        }

        public init(deadWeight: Double? = nil, height: Double? = nil, length: Double? = nil, packagingType: String? = nil, weight: Double? = nil, width: Double? = nil) {
            
            self.packagingType = packagingType
            
            self.weight = weight
            
            self.height = height
            
            self.length = length
            
            self.width = width
            
            self.deadWeight = deadWeight
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    packagingType = try container.decode(String.self, forKey: .packagingType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Double.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    height = try container.decode(Double.self, forKey: .height)
                
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
                
            
            
                do {
                    width = try container.decode(Double.self, forKey: .width)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deadWeight = try container.decode(Double.self, forKey: .deadWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(packagingType, forKey: .packagingType)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(deadWeight, forKey: .deadWeight)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Dimension
        Used By: Order
    */

    class Dimension: Codable {
        
        
        public var packagingType: String?
        
        public var weight: Double?
        
        public var height: Double?
        
        public var length: Double?
        
        public var width: Double?
        
        public var deadWeight: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case packagingType = "packaging_type"
            
            case weight = "weight"
            
            case height = "height"
            
            case length = "length"
            
            case width = "width"
            
            case deadWeight = "dead_weight"
            
        }

        public init(deadWeight: Double? = nil, height: Double? = nil, length: Double? = nil, packagingType: String? = nil, weight: Double? = nil, width: Double? = nil) {
            
            self.packagingType = packagingType
            
            self.weight = weight
            
            self.height = height
            
            self.length = length
            
            self.width = width
            
            self.deadWeight = deadWeight
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    packagingType = try container.decode(String.self, forKey: .packagingType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Double.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    height = try container.decode(Double.self, forKey: .height)
                
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
                
            
            
                do {
                    width = try container.decode(Double.self, forKey: .width)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deadWeight = try container.decode(Double.self, forKey: .deadWeight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(packagingType, forKey: .packagingType)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(deadWeight, forKey: .deadWeight)
            
            
        }
        
    }
}


