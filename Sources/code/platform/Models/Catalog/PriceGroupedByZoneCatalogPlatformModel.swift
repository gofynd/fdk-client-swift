

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PriceGroupedByZone
        Used By: Catalog
    */

    class PriceGroupedByZone: Codable {
        
        
        public var discount: String?
        
        public var storeId: [Int]?
        
        public var sellerId: Int?
        
        public var factoryTypeId: String?
        
        public var discountMeta: DiscountMeta?
        
        public var price: ProductListingPrice?
        

        public enum CodingKeys: String, CodingKey {
            
            case discount = "discount"
            
            case storeId = "store_id"
            
            case sellerId = "seller_id"
            
            case factoryTypeId = "factory_type_id"
            
            case discountMeta = "discount_meta"
            
            case price = "price"
            
        }

        public init(discount: String? = nil, discountMeta: DiscountMeta? = nil, factoryTypeId: String? = nil, price: ProductListingPrice? = nil, sellerId: Int? = nil, storeId: [Int]? = nil) {
            
            self.discount = discount
            
            self.storeId = storeId
            
            self.sellerId = sellerId
            
            self.factoryTypeId = factoryTypeId
            
            self.discountMeta = discountMeta
            
            self.price = price
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeId = try container.decode([Int].self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerId = try container.decode(Int.self, forKey: .sellerId)
                
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
                    discountMeta = try container.decode(DiscountMeta.self, forKey: .discountMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(ProductListingPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(factoryTypeId, forKey: .factoryTypeId)
            
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PriceGroupedByZone
        Used By: Catalog
    */

    class PriceGroupedByZone: Codable {
        
        
        public var discount: String?
        
        public var storeId: [Int]?
        
        public var sellerId: Int?
        
        public var factoryTypeId: String?
        
        public var discountMeta: DiscountMeta?
        
        public var price: ProductListingPrice?
        

        public enum CodingKeys: String, CodingKey {
            
            case discount = "discount"
            
            case storeId = "store_id"
            
            case sellerId = "seller_id"
            
            case factoryTypeId = "factory_type_id"
            
            case discountMeta = "discount_meta"
            
            case price = "price"
            
        }

        public init(discount: String? = nil, discountMeta: DiscountMeta? = nil, factoryTypeId: String? = nil, price: ProductListingPrice? = nil, sellerId: Int? = nil, storeId: [Int]? = nil) {
            
            self.discount = discount
            
            self.storeId = storeId
            
            self.sellerId = sellerId
            
            self.factoryTypeId = factoryTypeId
            
            self.discountMeta = discountMeta
            
            self.price = price
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeId = try container.decode([Int].self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerId = try container.decode(Int.self, forKey: .sellerId)
                
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
                    discountMeta = try container.decode(DiscountMeta.self, forKey: .discountMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(ProductListingPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(factoryTypeId, forKey: .factoryTypeId)
            
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
        }
        
    }
}


