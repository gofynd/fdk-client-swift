

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: Dimension
        Used By: Serviceability
    */

    class Dimension: Codable {
        
        
        public var length: Double?
        
        public var width: Double?
        
        public var height: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case length = "length"
            
            case width = "width"
            
            case height = "height"
            
        }

        public init(height: Double? = nil, length: Double? = nil, width: Double? = nil) {
            
            self.length = length
            
            self.width = width
            
            self.height = height
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    height = try container.decode(Double.self, forKey: .height)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: Dimension
        Used By: Serviceability
    */

    class Dimension: Codable {
        
        
        public var length: Double?
        
        public var width: Double?
        
        public var height: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case length = "length"
            
            case width = "width"
            
            case height = "height"
            
        }

        public init(height: Double? = nil, length: Double? = nil, width: Double? = nil) {
            
            self.length = length
            
            self.width = width
            
            self.height = height
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    height = try container.decode(Double.self, forKey: .height)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
        }
        
    }
}


