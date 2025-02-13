

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PriceFactorySizes
        Used By: Catalog
    */

    class PriceFactorySizes: Codable {
        
        
        public var sizeName: String?
        
        public var sellerIdentifier: String?
        
        public var markedPrice: Double?
        
        public var sellingPrice: Double?
        
        public var currency: String?
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case sizeName = "size_name"
            
            case sellerIdentifier = "seller_identifier"
            
            case markedPrice = "marked_price"
            
            case sellingPrice = "selling_price"
            
            case currency = "currency"
            
            case isActive = "is_active"
            
        }

        public init(currency: String? = nil, isActive: Bool? = nil, markedPrice: Double? = nil, sellerIdentifier: String? = nil, sellingPrice: Double? = nil, sizeName: String? = nil) {
            
            self.sizeName = sizeName
            
            self.sellerIdentifier = sellerIdentifier
            
            self.markedPrice = markedPrice
            
            self.sellingPrice = sellingPrice
            
            self.currency = currency
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sizeName = try container.decode(String.self, forKey: .sizeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
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
                
            
            
                do {
                    sellingPrice = try container.decode(Double.self, forKey: .sellingPrice)
                
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sizeName, forKey: .sizeName)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(markedPrice, forKey: .markedPrice)
            
            
            
            
            try? container.encodeIfPresent(sellingPrice, forKey: .sellingPrice)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PriceFactorySizes
        Used By: Catalog
    */

    class PriceFactorySizes: Codable {
        
        
        public var sizeName: String?
        
        public var sellerIdentifier: String?
        
        public var markedPrice: Double?
        
        public var sellingPrice: Double?
        
        public var currency: String?
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case sizeName = "size_name"
            
            case sellerIdentifier = "seller_identifier"
            
            case markedPrice = "marked_price"
            
            case sellingPrice = "selling_price"
            
            case currency = "currency"
            
            case isActive = "is_active"
            
        }

        public init(currency: String? = nil, isActive: Bool? = nil, markedPrice: Double? = nil, sellerIdentifier: String? = nil, sellingPrice: Double? = nil, sizeName: String? = nil) {
            
            self.sizeName = sizeName
            
            self.sellerIdentifier = sellerIdentifier
            
            self.markedPrice = markedPrice
            
            self.sellingPrice = sellingPrice
            
            self.currency = currency
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sizeName = try container.decode(String.self, forKey: .sizeName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
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
                
            
            
                do {
                    sellingPrice = try container.decode(Double.self, forKey: .sellingPrice)
                
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
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sizeName, forKey: .sizeName)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(markedPrice, forKey: .markedPrice)
            
            
            
            
            try? container.encodeIfPresent(sellingPrice, forKey: .sellingPrice)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}


