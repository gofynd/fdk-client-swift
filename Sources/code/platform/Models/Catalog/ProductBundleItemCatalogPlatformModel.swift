

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductBundleItem
        Used By: Catalog
    */

    class ProductBundleItem: Codable {
        
        
        public var allowRemove: Bool?
        
        public var autoAddToCart: Bool?
        
        public var autoSelect: Bool?
        
        public var maxQuantity: Int
        
        public var minQuantity: Int
        
        public var productUid: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case allowRemove = "allow_remove"
            
            case autoAddToCart = "auto_add_to_cart"
            
            case autoSelect = "auto_select"
            
            case maxQuantity = "max_quantity"
            
            case minQuantity = "min_quantity"
            
            case productUid = "product_uid"
            
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            
            self.allowRemove = allowRemove
            
            self.autoAddToCart = autoAddToCart
            
            self.autoSelect = autoSelect
            
            self.maxQuantity = maxQuantity
            
            self.minQuantity = minQuantity
            
            self.productUid = productUid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    allowRemove = try container.decode(Bool.self, forKey: .allowRemove)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoSelect = try container.decode(Bool.self, forKey: .autoSelect)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)
                
            
            
            
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)
                
            
            
            
                productUid = try container.decode(Int.self, forKey: .productUid)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
            
            
            
            
            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)
            
            
            
            
            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)
            
            
            
            
            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
            
            
            
            
            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)
            
            
            
            
            try? container.encodeIfPresent(productUid, forKey: .productUid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductBundleItem
        Used By: Catalog
    */

    class ProductBundleItem: Codable {
        
        
        public var allowRemove: Bool?
        
        public var autoAddToCart: Bool?
        
        public var autoSelect: Bool?
        
        public var maxQuantity: Int
        
        public var minQuantity: Int
        
        public var productUid: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case allowRemove = "allow_remove"
            
            case autoAddToCart = "auto_add_to_cart"
            
            case autoSelect = "auto_select"
            
            case maxQuantity = "max_quantity"
            
            case minQuantity = "min_quantity"
            
            case productUid = "product_uid"
            
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            
            self.allowRemove = allowRemove
            
            self.autoAddToCart = autoAddToCart
            
            self.autoSelect = autoSelect
            
            self.maxQuantity = maxQuantity
            
            self.minQuantity = minQuantity
            
            self.productUid = productUid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    allowRemove = try container.decode(Bool.self, forKey: .allowRemove)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoSelect = try container.decode(Bool.self, forKey: .autoSelect)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)
                
            
            
            
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)
                
            
            
            
                productUid = try container.decode(Int.self, forKey: .productUid)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
            
            
            
            
            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)
            
            
            
            
            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)
            
            
            
            
            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
            
            
            
            
            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)
            
            
            
            
            try? container.encodeIfPresent(productUid, forKey: .productUid)
            
            
        }
        
    }
}


