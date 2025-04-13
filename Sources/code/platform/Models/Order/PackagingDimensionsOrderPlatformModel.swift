

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PackagingDimensions
        Used By: Order
    */

    class PackagingDimensions: Codable {
        
        
        public var width: Double?
        
        public var height: Double?
        
        public var length: Double?
        
        public var weight: Double?
        
        public var packagingType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case width = "width"
            
            case height = "height"
            
            case length = "length"
            
            case weight = "weight"
            
            case packagingType = "packaging_type"
            
        }

        public init(height: Double? = nil, length: Double? = nil, packagingType: String? = nil, weight: Double? = nil, width: Double? = nil) {
            
            self.width = width
            
            self.height = height
            
            self.length = length
            
            self.weight = weight
            
            self.packagingType = packagingType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    width = try container.decode(Double.self, forKey: .width)
                
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
                    weight = try container.decode(Double.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingType = try container.decode(String.self, forKey: .packagingType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(packagingType, forKey: .packagingType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PackagingDimensions
        Used By: Order
    */

    class PackagingDimensions: Codable {
        
        
        public var width: Double?
        
        public var height: Double?
        
        public var length: Double?
        
        public var weight: Double?
        
        public var packagingType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case width = "width"
            
            case height = "height"
            
            case length = "length"
            
            case weight = "weight"
            
            case packagingType = "packaging_type"
            
        }

        public init(height: Double? = nil, length: Double? = nil, packagingType: String? = nil, weight: Double? = nil, width: Double? = nil) {
            
            self.width = width
            
            self.height = height
            
            self.length = length
            
            self.weight = weight
            
            self.packagingType = packagingType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    width = try container.decode(Double.self, forKey: .width)
                
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
                    weight = try container.decode(Double.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingType = try container.decode(String.self, forKey: .packagingType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(packagingType, forKey: .packagingType)
            
            
        }
        
    }
}


