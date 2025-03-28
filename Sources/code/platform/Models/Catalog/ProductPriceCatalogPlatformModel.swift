

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductPrice
        Used By: Catalog
    */

    class ProductPrice: Codable {
        
        
        public var selling: ProductMinMaxPrice?
        
        public var effective: ProductMinMaxPrice?
        
        public var marked: ProductMinMaxPrice?
        
        public var currency: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case selling = "selling"
            
            case effective = "effective"
            
            case marked = "marked"
            
            case currency = "currency"
            
        }

        public init(currency: String? = nil, effective: ProductMinMaxPrice? = nil, marked: ProductMinMaxPrice? = nil, selling: ProductMinMaxPrice? = nil) {
            
            self.selling = selling
            
            self.effective = effective
            
            self.marked = marked
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    selling = try container.decode(ProductMinMaxPrice.self, forKey: .selling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    effective = try container.decode(ProductMinMaxPrice.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marked = try container.decode(ProductMinMaxPrice.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductPrice
        Used By: Catalog
    */

    class ProductPrice: Codable {
        
        
        public var selling: ProductMinMaxPrice?
        
        public var effective: ProductMinMaxPrice?
        
        public var marked: ProductMinMaxPrice?
        
        public var currency: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case selling = "selling"
            
            case effective = "effective"
            
            case marked = "marked"
            
            case currency = "currency"
            
        }

        public init(currency: String? = nil, effective: ProductMinMaxPrice? = nil, marked: ProductMinMaxPrice? = nil, selling: ProductMinMaxPrice? = nil) {
            
            self.selling = selling
            
            self.effective = effective
            
            self.marked = marked
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    selling = try container.decode(ProductMinMaxPrice.self, forKey: .selling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    effective = try container.decode(ProductMinMaxPrice.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marked = try container.decode(ProductMinMaxPrice.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}


