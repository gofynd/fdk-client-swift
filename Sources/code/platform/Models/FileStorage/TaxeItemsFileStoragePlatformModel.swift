

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: TaxeItems
        Used By: FileStorage
    */

    class TaxeItems: Codable {
        
        
        public var hsnCode: String
        
        public var tax: [String: Any]
        
        public var total: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case hsnCode = "hsn_code"
            
            case tax = "tax"
            
            case total = "total"
            
        }

        public init(hsnCode: String, tax: [String: Any], total: Double? = nil) {
            
            self.hsnCode = hsnCode
            
            self.tax = tax
            
            self.total = total
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
            
            
            
                tax = try container.decode([String: Any].self, forKey: .tax)
                
            
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
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
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: TaxeItems
        Used By: FileStorage
    */

    class TaxeItems: Codable {
        
        
        public var hsnCode: String
        
        public var tax: [String: Any]
        
        public var total: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case hsnCode = "hsn_code"
            
            case tax = "tax"
            
            case total = "total"
            
        }

        public init(hsnCode: String, tax: [String: Any], total: Double? = nil) {
            
            self.hsnCode = hsnCode
            
            self.tax = tax
            
            self.total = total
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
            
            
            
                tax = try container.decode([String: Any].self, forKey: .tax)
                
            
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
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
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
}


