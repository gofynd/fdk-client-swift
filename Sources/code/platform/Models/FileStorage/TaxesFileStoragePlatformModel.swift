

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: Taxes
        Used By: FileStorage
    */

    class Taxes: Codable {
        
        
        public var hsnCode: String?
        
        public var tax: Tax?
        
        public var totalTaxValue: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case hsnCode = "hsn_code"
            
            case tax = "tax"
            
            case totalTaxValue = "total_tax_value"
            
        }

        public init(hsnCode: String? = nil, tax: Tax? = nil, totalTaxValue: Double? = nil) {
            
            self.hsnCode = hsnCode
            
            self.tax = tax
            
            self.totalTaxValue = totalTaxValue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tax = try container.decode(Tax.self, forKey: .tax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalTaxValue = try container.decode(Double.self, forKey: .totalTaxValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(tax, forKey: .tax)
            
            
            
            
            try? container.encodeIfPresent(totalTaxValue, forKey: .totalTaxValue)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: Taxes
        Used By: FileStorage
    */

    class Taxes: Codable {
        
        
        public var hsnCode: String?
        
        public var tax: Tax?
        
        public var totalTaxValue: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case hsnCode = "hsn_code"
            
            case tax = "tax"
            
            case totalTaxValue = "total_tax_value"
            
        }

        public init(hsnCode: String? = nil, tax: Tax? = nil, totalTaxValue: Double? = nil) {
            
            self.hsnCode = hsnCode
            
            self.tax = tax
            
            self.totalTaxValue = totalTaxValue
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tax = try container.decode(Tax.self, forKey: .tax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalTaxValue = try container.decode(Double.self, forKey: .totalTaxValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(tax, forKey: .tax)
            
            
            
            
            try? container.encodeIfPresent(totalTaxValue, forKey: .totalTaxValue)
            
            
        }
        
    }
}


