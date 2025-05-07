

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: TaxTable
        Used By: FileStorage
    */

    class TaxTable: Codable {
        
        
        public var taxes: [Taxes]?
        
        public var totalTax: Double?
        
        public var taxInWords: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case taxes = "taxes"
            
            case totalTax = "total_tax"
            
            case taxInWords = "tax_in_words"
            
        }

        public init(taxes: [Taxes]? = nil, taxInWords: String? = nil, totalTax: Double? = nil) {
            
            self.taxes = taxes
            
            self.totalTax = totalTax
            
            self.taxInWords = taxInWords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    taxes = try container.decode([Taxes].self, forKey: .taxes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalTax = try container.decode(Double.self, forKey: .totalTax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(totalTax, forKey: .totalTax)
            
            
            
            
            try? container.encodeIfPresent(taxInWords, forKey: .taxInWords)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: TaxTable
        Used By: FileStorage
    */

    class TaxTable: Codable {
        
        
        public var taxes: [Taxes]?
        
        public var totalTax: Double?
        
        public var taxInWords: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case taxes = "taxes"
            
            case totalTax = "total_tax"
            
            case taxInWords = "tax_in_words"
            
        }

        public init(taxes: [Taxes]? = nil, taxInWords: String? = nil, totalTax: Double? = nil) {
            
            self.taxes = taxes
            
            self.totalTax = totalTax
            
            self.taxInWords = taxInWords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    taxes = try container.decode([Taxes].self, forKey: .taxes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalTax = try container.decode(Double.self, forKey: .totalTax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(totalTax, forKey: .totalTax)
            
            
            
            
            try? container.encodeIfPresent(taxInWords, forKey: .taxInWords)
            
            
        }
        
    }
}


