

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductPriceItem
        Used By: Catalog
    */

    class ProductPriceItem: Codable {
        
        
        public var discountMeta: DiscountMeta?
        
        public var productName: String?
        
        public var itemId: Double?
        
        public var factoryTypeId: String?
        
        public var price: ProductPrice?
        
        public var storeId: Double?
        
        public var isSellable: Bool?
        
        public var sellerId: Double?
        
        public var deliveryZoneIds: [String]?
        
        public var sizes: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case discountMeta = "discount_meta"
            
            case productName = "product_name"
            
            case itemId = "item_id"
            
            case factoryTypeId = "factory_type_id"
            
            case price = "price"
            
            case storeId = "store_id"
            
            case isSellable = "is_sellable"
            
            case sellerId = "seller_id"
            
            case deliveryZoneIds = "delivery_zone_ids"
            
            case sizes = "sizes"
            
        }

        public init(deliveryZoneIds: [String]? = nil, discountMeta: DiscountMeta? = nil, factoryTypeId: String? = nil, isSellable: Bool? = nil, itemId: Double? = nil, price: ProductPrice? = nil, productName: String? = nil, sellerId: Double? = nil, sizes: [String]? = nil, storeId: Double? = nil) {
            
            self.discountMeta = discountMeta
            
            self.productName = productName
            
            self.itemId = itemId
            
            self.factoryTypeId = factoryTypeId
            
            self.price = price
            
            self.storeId = storeId
            
            self.isSellable = isSellable
            
            self.sellerId = sellerId
            
            self.deliveryZoneIds = deliveryZoneIds
            
            self.sizes = sizes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    discountMeta = try container.decode(DiscountMeta.self, forKey: .discountMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productName = try container.decode(String.self, forKey: .productName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode(Double.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    factoryTypeId = try container.decode(String.self, forKey: .factoryTypeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(ProductPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeId = try container.decode(Double.self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSellable = try container.decode(Bool.self, forKey: .isSellable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerId = try container.decode(Double.self, forKey: .sellerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryZoneIds = try container.decode([String].self, forKey: .deliveryZoneIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizes = try container.decode([String].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
            
            
            try? container.encodeIfPresent(productName, forKey: .productName)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(factoryTypeId, forKey: .factoryTypeId)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(isSellable, forKey: .isSellable)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(deliveryZoneIds, forKey: .deliveryZoneIds)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductPriceItem
        Used By: Catalog
    */

    class ProductPriceItem: Codable {
        
        
        public var discountMeta: DiscountMeta?
        
        public var productName: String?
        
        public var itemId: Double?
        
        public var factoryTypeId: String?
        
        public var price: ProductPrice?
        
        public var storeId: Double?
        
        public var isSellable: Bool?
        
        public var sellerId: Double?
        
        public var deliveryZoneIds: [String]?
        
        public var sizes: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case discountMeta = "discount_meta"
            
            case productName = "product_name"
            
            case itemId = "item_id"
            
            case factoryTypeId = "factory_type_id"
            
            case price = "price"
            
            case storeId = "store_id"
            
            case isSellable = "is_sellable"
            
            case sellerId = "seller_id"
            
            case deliveryZoneIds = "delivery_zone_ids"
            
            case sizes = "sizes"
            
        }

        public init(deliveryZoneIds: [String]? = nil, discountMeta: DiscountMeta? = nil, factoryTypeId: String? = nil, isSellable: Bool? = nil, itemId: Double? = nil, price: ProductPrice? = nil, productName: String? = nil, sellerId: Double? = nil, sizes: [String]? = nil, storeId: Double? = nil) {
            
            self.discountMeta = discountMeta
            
            self.productName = productName
            
            self.itemId = itemId
            
            self.factoryTypeId = factoryTypeId
            
            self.price = price
            
            self.storeId = storeId
            
            self.isSellable = isSellable
            
            self.sellerId = sellerId
            
            self.deliveryZoneIds = deliveryZoneIds
            
            self.sizes = sizes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    discountMeta = try container.decode(DiscountMeta.self, forKey: .discountMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productName = try container.decode(String.self, forKey: .productName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode(Double.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    factoryTypeId = try container.decode(String.self, forKey: .factoryTypeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(ProductPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeId = try container.decode(Double.self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSellable = try container.decode(Bool.self, forKey: .isSellable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerId = try container.decode(Double.self, forKey: .sellerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryZoneIds = try container.decode([String].self, forKey: .deliveryZoneIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizes = try container.decode([String].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
            
            
            try? container.encodeIfPresent(productName, forKey: .productName)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(factoryTypeId, forKey: .factoryTypeId)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(isSellable, forKey: .isSellable)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(deliveryZoneIds, forKey: .deliveryZoneIds)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
        }
        
    }
}


