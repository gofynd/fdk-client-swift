

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SizeDistributionSchema
        Used By: Catalog
    */

    class SizeDistributionSchema: Codable {
        
        
        public var size: [SetSizeSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
        }

        public init(size: [SetSizeSchema]? = nil) {
            
            self.size = size
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    size = try container.decode([SetSizeSchema].self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SizeDistributionSchema
        Used By: Catalog
    */

    class SizeDistributionSchema: Codable {
        
        
        public var size: [SetSizeSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
        }

        public init(size: [SetSizeSchema]? = nil) {
            
            self.size = size
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    size = try container.decode([SetSizeSchema].self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
}


