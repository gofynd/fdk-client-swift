

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: ItemsProductTable
        Used By: FileStorage
    */

    class ItemsProductTable: Codable {
        
        
        public var name: String?
        
        public var sellerIdentifier: String?
        
        public var total: Double?
        
        public var brand: Brand?
        
        public var hsnCode: String?
        
        public var itemCode: String?
        
        public var totalUnits: Double?
        
        public var size: String?
        
        public var mrp: Double?
        
        public var discount: Double?
        
        public var taxableAmount: Double?
        
        public var totalTaxableAmount: Double?
        
        public var tax: Tax?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case sellerIdentifier = "seller_identifier"
            
            case total = "total"
            
            case brand = "brand"
            
            case hsnCode = "hsn_code"
            
            case itemCode = "item_code"
            
            case totalUnits = "total_units"
            
            case size = "size"
            
            case mrp = "mrp"
            
            case discount = "discount"
            
            case taxableAmount = "taxable_amount"
            
            case totalTaxableAmount = "total_taxable_amount"
            
            case tax = "tax"
            
        }

        public init(brand: Brand? = nil, discount: Double? = nil, hsnCode: String? = nil, itemCode: String? = nil, mrp: Double? = nil, name: String? = nil, sellerIdentifier: String? = nil, size: String? = nil, tax: Tax? = nil, taxableAmount: Double? = nil, total: Double? = nil, totalTaxableAmount: Double? = nil, totalUnits: Double? = nil) {
            
            self.name = name
            
            self.sellerIdentifier = sellerIdentifier
            
            self.total = total
            
            self.brand = brand
            
            self.hsnCode = hsnCode
            
            self.itemCode = itemCode
            
            self.totalUnits = totalUnits
            
            self.size = size
            
            self.mrp = mrp
            
            self.discount = discount
            
            self.taxableAmount = taxableAmount
            
            self.totalTaxableAmount = totalTaxableAmount
            
            self.tax = tax
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                
            
            
                do {
                    hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
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
                    size = try container.decode(String.self, forKey: .size)
                
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
                    tax = try container.decode(Tax.self, forKey: .tax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(mrp, forKey: .mrp)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(taxableAmount, forKey: .taxableAmount)
            
            
            
            
            try? container.encodeIfPresent(totalTaxableAmount, forKey: .totalTaxableAmount)
            
            
            
            
            try? container.encodeIfPresent(tax, forKey: .tax)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: ItemsProductTable
        Used By: FileStorage
    */

    class ItemsProductTable: Codable {
        
        
        public var name: String?
        
        public var sellerIdentifier: String?
        
        public var total: Double?
        
        public var brand: Brand?
        
        public var hsnCode: String?
        
        public var itemCode: String?
        
        public var totalUnits: Double?
        
        public var size: String?
        
        public var mrp: Double?
        
        public var discount: Double?
        
        public var taxableAmount: Double?
        
        public var totalTaxableAmount: Double?
        
        public var tax: Tax?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case sellerIdentifier = "seller_identifier"
            
            case total = "total"
            
            case brand = "brand"
            
            case hsnCode = "hsn_code"
            
            case itemCode = "item_code"
            
            case totalUnits = "total_units"
            
            case size = "size"
            
            case mrp = "mrp"
            
            case discount = "discount"
            
            case taxableAmount = "taxable_amount"
            
            case totalTaxableAmount = "total_taxable_amount"
            
            case tax = "tax"
            
        }

        public init(brand: Brand? = nil, discount: Double? = nil, hsnCode: String? = nil, itemCode: String? = nil, mrp: Double? = nil, name: String? = nil, sellerIdentifier: String? = nil, size: String? = nil, tax: Tax? = nil, taxableAmount: Double? = nil, total: Double? = nil, totalTaxableAmount: Double? = nil, totalUnits: Double? = nil) {
            
            self.name = name
            
            self.sellerIdentifier = sellerIdentifier
            
            self.total = total
            
            self.brand = brand
            
            self.hsnCode = hsnCode
            
            self.itemCode = itemCode
            
            self.totalUnits = totalUnits
            
            self.size = size
            
            self.mrp = mrp
            
            self.discount = discount
            
            self.taxableAmount = taxableAmount
            
            self.totalTaxableAmount = totalTaxableAmount
            
            self.tax = tax
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                
            
            
                do {
                    hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
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
                    size = try container.decode(String.self, forKey: .size)
                
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
                    tax = try container.decode(Tax.self, forKey: .tax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(mrp, forKey: .mrp)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(taxableAmount, forKey: .taxableAmount)
            
            
            
            
            try? container.encodeIfPresent(totalTaxableAmount, forKey: .totalTaxableAmount)
            
            
            
            
            try? container.encodeIfPresent(tax, forKey: .tax)
            
            
        }
        
    }
}


