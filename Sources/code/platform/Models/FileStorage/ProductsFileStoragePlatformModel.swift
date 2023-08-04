

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: Products
        Used By: FileStorage
    */

    class Products: Codable {
        
        
        public var name: String
        
        public var size: String
        
        public var itemCode: String
        
        public var sellerIdentifier: String
        
        public var hsnCode: String?
        
        public var totalUnits: Double?
        
        public var mrp: Double?
        
        public var discount: Double?
        
        public var taxableAmount: Double?
        
        public var totalTaxableAmount: Double?
        
        public var tax: [String: Any]?
        
        public var total: Double?
        
        public var brand: Brand?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case size = "size"
            
            case itemCode = "item_code"
            
            case sellerIdentifier = "seller_identifier"
            
            case hsnCode = "hsn_code"
            
            case totalUnits = "total_units"
            
            case mrp = "mrp"
            
            case discount = "discount"
            
            case taxableAmount = "taxable_amount"
            
            case totalTaxableAmount = "total_taxable_amount"
            
            case tax = "tax"
            
            case total = "total"
            
            case brand = "brand"
            
        }

        public init(brand: Brand? = nil, discount: Double? = nil, hsnCode: String? = nil, itemCode: String, mrp: Double? = nil, name: String, sellerIdentifier: String, size: String, tax: [String: Any]? = nil, taxableAmount: Double? = nil, total: Double? = nil, totalTaxableAmount: Double? = nil, totalUnits: Double? = nil) {
            
            self.name = name
            
            self.size = size
            
            self.itemCode = itemCode
            
            self.sellerIdentifier = sellerIdentifier
            
            self.hsnCode = hsnCode
            
            self.totalUnits = totalUnits
            
            self.mrp = mrp
            
            self.discount = discount
            
            self.taxableAmount = taxableAmount
            
            self.totalTaxableAmount = totalTaxableAmount
            
            self.tax = tax
            
            self.total = total
            
            self.brand = brand
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                itemCode = try container.decode(String.self, forKey: .itemCode)
                
            
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                do {
                    hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalUnits = try container.decode(Double.self, forKey: .totalUnits)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mrp = try container.decode(Double.self, forKey: .mrp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxableAmount = try container.decode(Double.self, forKey: .taxableAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalTaxableAmount = try container.decode(Double.self, forKey: .totalTaxableAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tax = try container.decode([String: Any].self, forKey: .tax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(Brand.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
            
            
            
            
            try? container.encodeIfPresent(mrp, forKey: .mrp)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(taxableAmount, forKey: .taxableAmount)
            
            
            
            
            try? container.encodeIfPresent(totalTaxableAmount, forKey: .totalTaxableAmount)
            
            
            
            
            try? container.encodeIfPresent(tax, forKey: .tax)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: Products
        Used By: FileStorage
    */

    class Products: Codable {
        
        
        public var name: String
        
        public var size: String
        
        public var itemCode: String
        
        public var sellerIdentifier: String
        
        public var hsnCode: String?
        
        public var totalUnits: Double?
        
        public var mrp: Double?
        
        public var discount: Double?
        
        public var taxableAmount: Double?
        
        public var totalTaxableAmount: Double?
        
        public var tax: [String: Any]?
        
        public var total: Double?
        
        public var brand: Brand?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case size = "size"
            
            case itemCode = "item_code"
            
            case sellerIdentifier = "seller_identifier"
            
            case hsnCode = "hsn_code"
            
            case totalUnits = "total_units"
            
            case mrp = "mrp"
            
            case discount = "discount"
            
            case taxableAmount = "taxable_amount"
            
            case totalTaxableAmount = "total_taxable_amount"
            
            case tax = "tax"
            
            case total = "total"
            
            case brand = "brand"
            
        }

        public init(brand: Brand? = nil, discount: Double? = nil, hsnCode: String? = nil, itemCode: String, mrp: Double? = nil, name: String, sellerIdentifier: String, size: String, tax: [String: Any]? = nil, taxableAmount: Double? = nil, total: Double? = nil, totalTaxableAmount: Double? = nil, totalUnits: Double? = nil) {
            
            self.name = name
            
            self.size = size
            
            self.itemCode = itemCode
            
            self.sellerIdentifier = sellerIdentifier
            
            self.hsnCode = hsnCode
            
            self.totalUnits = totalUnits
            
            self.mrp = mrp
            
            self.discount = discount
            
            self.taxableAmount = taxableAmount
            
            self.totalTaxableAmount = totalTaxableAmount
            
            self.tax = tax
            
            self.total = total
            
            self.brand = brand
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                itemCode = try container.decode(String.self, forKey: .itemCode)
                
            
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                do {
                    hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalUnits = try container.decode(Double.self, forKey: .totalUnits)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mrp = try container.decode(Double.self, forKey: .mrp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxableAmount = try container.decode(Double.self, forKey: .taxableAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalTaxableAmount = try container.decode(Double.self, forKey: .totalTaxableAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tax = try container.decode([String: Any].self, forKey: .tax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(Brand.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
            
            
            
            
            try? container.encodeIfPresent(mrp, forKey: .mrp)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(taxableAmount, forKey: .taxableAmount)
            
            
            
            
            try? container.encodeIfPresent(totalTaxableAmount, forKey: .totalTaxableAmount)
            
            
            
            
            try? container.encodeIfPresent(tax, forKey: .tax)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
        }
        
    }
}


