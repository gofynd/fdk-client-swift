

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductListingPrice
        Used By: Catalog
    */

    class ProductListingPrice: Codable {
        
        
        public var effective: Price1?
        
        public var marked: Price1?
        
        public var selling: Price1?
        

        public enum CodingKeys: String, CodingKey {
            
            case effective = "effective"
            
            case marked = "marked"
            
            case selling = "selling"
            
        }

        public init(effective: Price1? = nil, marked: Price1? = nil, selling: Price1? = nil) {
            
            self.effective = effective
            
            self.marked = marked
            
            self.selling = selling
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    effective = try container.decode(Price1.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marked = try container.decode(Price1.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selling = try container.decode(Price1.self, forKey: .selling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductListingPrice
        Used By: Catalog
    */

    class ProductListingPrice: Codable {
        
        
        public var effective: Price1?
        
        public var marked: Price1?
        
        public var selling: Price1?
        

        public enum CodingKeys: String, CodingKey {
            
            case effective = "effective"
            
            case marked = "marked"
            
            case selling = "selling"
            
        }

        public init(effective: Price1? = nil, marked: Price1? = nil, selling: Price1? = nil) {
            
            self.effective = effective
            
            self.marked = marked
            
            self.selling = selling
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    effective = try container.decode(Price1.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marked = try container.decode(Price1.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selling = try container.decode(Price1.self, forKey: .selling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            
        }
        
    }
}


