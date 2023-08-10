

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Quantity
        Used By: Catalog
    */

    class Quantity: Codable {
        
        
        public var count: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
        }

        public init(count: Int? = nil) {
            
            self.count = count
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Quantity
        Used By: Catalog
    */

    class Quantity: Codable {
        
        
        public var count: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case count = "count"
            
        }

        public init(count: Int? = nil) {
            
            self.count = count
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
        }
        
    }
}


