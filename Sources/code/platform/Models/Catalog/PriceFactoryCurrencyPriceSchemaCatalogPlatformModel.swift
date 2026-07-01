

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PriceFactoryCurrencyPriceSchema
        Used By: Catalog
    */

    class PriceFactoryCurrencyPriceSchema: Codable {
        
        
        public var basePrice: Bool?
        
        public var currency: String?
        
        public var sellingPrice: Double?
        
        public var markedPrice: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case basePrice = "base_price"
            
            case currency = "currency"
            
            case sellingPrice = "selling_price"
            
            case markedPrice = "marked_price"
            
        }

        public init(basePrice: Bool? = nil, currency: String? = nil, markedPrice: Double? = nil, sellingPrice: Double? = nil) {
            
            self.basePrice = basePrice
            
            self.currency = currency
            
            self.sellingPrice = sellingPrice
            
            self.markedPrice = markedPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    basePrice = try container.decode(Bool.self, forKey: .basePrice)
                
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
                
            
            
                do {
                    sellingPrice = try container.decode(Double.self, forKey: .sellingPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    markedPrice = try container.decode(Double.self, forKey: .markedPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(basePrice, forKey: .basePrice)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(sellingPrice, forKey: .sellingPrice)
            
            
            
            
            try? container.encodeIfPresent(markedPrice, forKey: .markedPrice)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PriceFactoryCurrencyPriceSchema
        Used By: Catalog
    */

    class PriceFactoryCurrencyPriceSchema: Codable {
        
        
        public var basePrice: Bool?
        
        public var currency: String?
        
        public var sellingPrice: Double?
        
        public var markedPrice: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case basePrice = "base_price"
            
            case currency = "currency"
            
            case sellingPrice = "selling_price"
            
            case markedPrice = "marked_price"
            
        }

        public init(basePrice: Bool? = nil, currency: String? = nil, markedPrice: Double? = nil, sellingPrice: Double? = nil) {
            
            self.basePrice = basePrice
            
            self.currency = currency
            
            self.sellingPrice = sellingPrice
            
            self.markedPrice = markedPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    basePrice = try container.decode(Bool.self, forKey: .basePrice)
                
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
                
            
            
                do {
                    sellingPrice = try container.decode(Double.self, forKey: .sellingPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    markedPrice = try container.decode(Double.self, forKey: .markedPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(basePrice, forKey: .basePrice)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(sellingPrice, forKey: .sellingPrice)
            
            
            
            
            try? container.encodeIfPresent(markedPrice, forKey: .markedPrice)
            
            
        }
        
    }
}


