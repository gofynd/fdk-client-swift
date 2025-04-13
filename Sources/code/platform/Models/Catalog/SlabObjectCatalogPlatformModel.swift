

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SlabObject
        Used By: Catalog
    */

    class SlabObject: Codable {
        
        
        public var threshold: Int?
        
        public var tax: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case threshold = "threshold"
            
            case tax = "tax"
            
        }

        public init(tax: Int? = nil, threshold: Int? = nil) {
            
            self.threshold = threshold
            
            self.tax = tax
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    threshold = try container.decode(Int.self, forKey: .threshold)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tax = try container.decode(Int.self, forKey: .tax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(threshold, forKey: .threshold)
            
            
            
            
            try? container.encodeIfPresent(tax, forKey: .tax)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SlabObject
        Used By: Catalog
    */

    class SlabObject: Codable {
        
        
        public var threshold: Int?
        
        public var tax: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case threshold = "threshold"
            
            case tax = "tax"
            
        }

        public init(tax: Int? = nil, threshold: Int? = nil) {
            
            self.threshold = threshold
            
            self.tax = tax
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    threshold = try container.decode(Int.self, forKey: .threshold)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tax = try container.decode(Int.self, forKey: .tax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(threshold, forKey: .threshold)
            
            
            
            
            try? container.encodeIfPresent(tax, forKey: .tax)
            
            
        }
        
    }
}


