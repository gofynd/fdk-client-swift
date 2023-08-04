

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: taxTable
        Used By: FileStorage
    */

    class taxTable: Codable {
        
        
        public var taxes: [TaxeItems]
        
        public var grandTotal: Double
        
        public var taxInWords: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case taxes = "taxes"
            
            case grandTotal = "grand_total"
            
            case taxInWords = "tax_in_words"
            
        }

        public init(grandTotal: Double, taxes: [TaxeItems], taxInWords: String? = nil) {
            
            self.taxes = taxes
            
            self.grandTotal = grandTotal
            
            self.taxInWords = taxInWords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                taxes = try container.decode([TaxeItems].self, forKey: .taxes)
                
            
            
            
                grandTotal = try container.decode(Double.self, forKey: .grandTotal)
                
            
            
            
                do {
                    taxInWords = try container.decode(String.self, forKey: .taxInWords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(taxes, forKey: .taxes)
            
            
            
            
            try? container.encodeIfPresent(grandTotal, forKey: .grandTotal)
            
            
            
            
            try? container.encodeIfPresent(taxInWords, forKey: .taxInWords)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: taxTable
        Used By: FileStorage
    */

    class taxTable: Codable {
        
        
        public var taxes: [TaxeItems]
        
        public var grandTotal: Double
        
        public var taxInWords: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case taxes = "taxes"
            
            case grandTotal = "grand_total"
            
            case taxInWords = "tax_in_words"
            
        }

        public init(grandTotal: Double, taxes: [TaxeItems], taxInWords: String? = nil) {
            
            self.taxes = taxes
            
            self.grandTotal = grandTotal
            
            self.taxInWords = taxInWords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                taxes = try container.decode([TaxeItems].self, forKey: .taxes)
                
            
            
            
                grandTotal = try container.decode(Double.self, forKey: .grandTotal)
                
            
            
            
                do {
                    taxInWords = try container.decode(String.self, forKey: .taxInWords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(taxes, forKey: .taxes)
            
            
            
            
            try? container.encodeIfPresent(grandTotal, forKey: .grandTotal)
            
            
            
            
            try? container.encodeIfPresent(taxInWords, forKey: .taxInWords)
            
            
        }
        
    }
}


