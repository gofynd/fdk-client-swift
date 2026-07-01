

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CurrencyPriceSchema
        Used By: Catalog
    */

    class CurrencyPriceSchema: Codable {
        
        
        public var markedPrice: Double
        
        public var sellingPrice: Double
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case markedPrice = "marked_price"
            
            case sellingPrice = "selling_price"
            
            case currency = "currency"
            
        }

        public init(currency: String, markedPrice: Double, sellingPrice: Double) {
            
            self.markedPrice = markedPrice
            
            self.sellingPrice = sellingPrice
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                markedPrice = try container.decode(Double.self, forKey: .markedPrice)
                
            
            
            
                sellingPrice = try container.decode(Double.self, forKey: .sellingPrice)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(markedPrice, forKey: .markedPrice)
            
            
            
            
            try? container.encodeIfPresent(sellingPrice, forKey: .sellingPrice)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CurrencyPriceSchema
        Used By: Catalog
    */

    class CurrencyPriceSchema: Codable {
        
        
        public var markedPrice: Double
        
        public var sellingPrice: Double
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case markedPrice = "marked_price"
            
            case sellingPrice = "selling_price"
            
            case currency = "currency"
            
        }

        public init(currency: String, markedPrice: Double, sellingPrice: Double) {
            
            self.markedPrice = markedPrice
            
            self.sellingPrice = sellingPrice
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                markedPrice = try container.decode(Double.self, forKey: .markedPrice)
                
            
            
            
                sellingPrice = try container.decode(Double.self, forKey: .sellingPrice)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(markedPrice, forKey: .markedPrice)
            
            
            
            
            try? container.encodeIfPresent(sellingPrice, forKey: .sellingPrice)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}


