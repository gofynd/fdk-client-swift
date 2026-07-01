

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CurrencyPrice
        Used By: Catalog
    */

    class CurrencyPrice: Codable {
        
        
        public var discount: Double?
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        
        public var marked: PriceRange?
        
        public var effective: PriceRange?
        
        public var selling: PriceRange?
        

        public enum CodingKeys: String, CodingKey {
            
            case discount = "discount"
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
            case marked = "marked"
            
            case effective = "effective"
            
            case selling = "selling"
            
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, discount: Double? = nil, effective: PriceRange? = nil, marked: PriceRange? = nil, selling: PriceRange? = nil) {
            
            self.discount = discount
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
            self.marked = marked
            
            self.effective = effective
            
            self.selling = selling
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marked = try container.decode(PriceRange.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    effective = try container.decode(PriceRange.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selling = try container.decode(PriceRange.self, forKey: .selling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CurrencyPrice
        Used By: Catalog
    */

    class CurrencyPrice: Codable {
        
        
        public var discount: Double?
        
        public var currencyCode: String?
        
        public var currencySymbol: String?
        
        public var marked: PriceRange?
        
        public var effective: PriceRange?
        
        public var selling: PriceRange?
        

        public enum CodingKeys: String, CodingKey {
            
            case discount = "discount"
            
            case currencyCode = "currency_code"
            
            case currencySymbol = "currency_symbol"
            
            case marked = "marked"
            
            case effective = "effective"
            
            case selling = "selling"
            
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, discount: Double? = nil, effective: PriceRange? = nil, marked: PriceRange? = nil, selling: PriceRange? = nil) {
            
            self.discount = discount
            
            self.currencyCode = currencyCode
            
            self.currencySymbol = currencySymbol
            
            self.marked = marked
            
            self.effective = effective
            
            self.selling = selling
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marked = try container.decode(PriceRange.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    effective = try container.decode(PriceRange.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selling = try container.decode(PriceRange.self, forKey: .selling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            
        }
        
    }
}


