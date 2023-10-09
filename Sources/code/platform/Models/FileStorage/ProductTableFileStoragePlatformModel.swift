

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: ProductTable
        Used By: FileStorage
    */

    class ProductTable: Codable {
        
        
        public var totalItems: Double?
        
        public var products: [ItemsProductTable]?
        
        public var grandTotal: Double?
        
        public var deliveryCharges: Double?
        
        public var deliveryChargeText: String?
        
        public var codCharges: Double?
        
        public var fyndDiscounts: Double?
        
        public var totalInWords: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalItems = "total_items"
            
            case products = "products"
            
            case grandTotal = "grand_total"
            
            case deliveryCharges = "delivery_charges"
            
            case deliveryChargeText = "delivery_charge_text"
            
            case codCharges = "cod_charges"
            
            case fyndDiscounts = "fynd_discounts"
            
            case totalInWords = "total_in_words"
            
        }

        public init(codCharges: Double? = nil, deliveryCharges: Double? = nil, deliveryChargeText: String? = nil, fyndDiscounts: Double? = nil, grandTotal: Double? = nil, products: [ItemsProductTable]? = nil, totalInWords: String? = nil, totalItems: Double? = nil) {
            
            self.totalItems = totalItems
            
            self.products = products
            
            self.grandTotal = grandTotal
            
            self.deliveryCharges = deliveryCharges
            
            self.deliveryChargeText = deliveryChargeText
            
            self.codCharges = codCharges
            
            self.fyndDiscounts = fyndDiscounts
            
            self.totalInWords = totalInWords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalItems = try container.decode(Double.self, forKey: .totalItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    products = try container.decode([ItemsProductTable].self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    grandTotal = try container.decode(Double.self, forKey: .grandTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryChargeText = try container.decode(String.self, forKey: .deliveryChargeText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndDiscounts = try container.decode(Double.self, forKey: .fyndDiscounts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalInWords = try container.decode(String.self, forKey: .totalInWords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encodeIfPresent(grandTotal, forKey: .grandTotal)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(deliveryChargeText, forKey: .deliveryChargeText)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(fyndDiscounts, forKey: .fyndDiscounts)
            
            
            
            
            try? container.encodeIfPresent(totalInWords, forKey: .totalInWords)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: ProductTable
        Used By: FileStorage
    */

    class ProductTable: Codable {
        
        
        public var totalItems: Double?
        
        public var products: [ItemsProductTable]?
        
        public var grandTotal: Double?
        
        public var deliveryCharges: Double?
        
        public var deliveryChargeText: String?
        
        public var codCharges: Double?
        
        public var fyndDiscounts: Double?
        
        public var totalInWords: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalItems = "total_items"
            
            case products = "products"
            
            case grandTotal = "grand_total"
            
            case deliveryCharges = "delivery_charges"
            
            case deliveryChargeText = "delivery_charge_text"
            
            case codCharges = "cod_charges"
            
            case fyndDiscounts = "fynd_discounts"
            
            case totalInWords = "total_in_words"
            
        }

        public init(codCharges: Double? = nil, deliveryCharges: Double? = nil, deliveryChargeText: String? = nil, fyndDiscounts: Double? = nil, grandTotal: Double? = nil, products: [ItemsProductTable]? = nil, totalInWords: String? = nil, totalItems: Double? = nil) {
            
            self.totalItems = totalItems
            
            self.products = products
            
            self.grandTotal = grandTotal
            
            self.deliveryCharges = deliveryCharges
            
            self.deliveryChargeText = deliveryChargeText
            
            self.codCharges = codCharges
            
            self.fyndDiscounts = fyndDiscounts
            
            self.totalInWords = totalInWords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalItems = try container.decode(Double.self, forKey: .totalItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    products = try container.decode([ItemsProductTable].self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    grandTotal = try container.decode(Double.self, forKey: .grandTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryChargeText = try container.decode(String.self, forKey: .deliveryChargeText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndDiscounts = try container.decode(Double.self, forKey: .fyndDiscounts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalInWords = try container.decode(String.self, forKey: .totalInWords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
            
            
            
            
            try? container.encodeIfPresent(products, forKey: .products)
            
            
            
            
            try? container.encodeIfPresent(grandTotal, forKey: .grandTotal)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(deliveryChargeText, forKey: .deliveryChargeText)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(fyndDiscounts, forKey: .fyndDiscounts)
            
            
            
            
            try? container.encodeIfPresent(totalInWords, forKey: .totalInWords)
            
            
        }
        
    }
}


