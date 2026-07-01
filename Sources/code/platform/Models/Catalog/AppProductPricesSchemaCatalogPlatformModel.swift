

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AppProductPricesSchema
        Used By: Catalog
    */

    class AppProductPricesSchema: Codable {
        
        
        public var itemCode: String?
        
        public var brandUid: Int?
        
        public var itemId: Int?
        
        public var discountMeta: [String: Any]?
        
        public var productPrice: [ProductPrice]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemCode = "item_code"
            
            case brandUid = "brand_uid"
            
            case itemId = "item_id"
            
            case discountMeta = "discount_meta"
            
            case productPrice = "product_price"
            
        }

        public init(brandUid: Int? = nil, discountMeta: [String: Any]? = nil, itemCode: String? = nil, itemId: Int? = nil, productPrice: [ProductPrice]? = nil) {
            
            self.itemCode = itemCode
            
            self.brandUid = brandUid
            
            self.itemId = itemId
            
            self.discountMeta = discountMeta
            
            self.productPrice = productPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandUid = try container.decode(Int.self, forKey: .brandUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountMeta = try container.decode([String: Any].self, forKey: .discountMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productPrice = try container.decode([ProductPrice].self, forKey: .productPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
            
            
            try? container.encodeIfPresent(productPrice, forKey: .productPrice)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AppProductPricesSchema
        Used By: Catalog
    */

    class AppProductPricesSchema: Codable {
        
        
        public var itemCode: String?
        
        public var brandUid: Int?
        
        public var itemId: Int?
        
        public var discountMeta: [String: Any]?
        
        public var productPrice: [ProductPrice]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemCode = "item_code"
            
            case brandUid = "brand_uid"
            
            case itemId = "item_id"
            
            case discountMeta = "discount_meta"
            
            case productPrice = "product_price"
            
        }

        public init(brandUid: Int? = nil, discountMeta: [String: Any]? = nil, itemCode: String? = nil, itemId: Int? = nil, productPrice: [ProductPrice]? = nil) {
            
            self.itemCode = itemCode
            
            self.brandUid = brandUid
            
            self.itemId = itemId
            
            self.discountMeta = discountMeta
            
            self.productPrice = productPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandUid = try container.decode(Int.self, forKey: .brandUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountMeta = try container.decode([String: Any].self, forKey: .discountMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productPrice = try container.decode([ProductPrice].self, forKey: .productPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
            
            
            try? container.encodeIfPresent(productPrice, forKey: .productPrice)
            
            
        }
        
    }
}


