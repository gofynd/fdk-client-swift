

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductDetails
        Used By: Catalog
    */

    class ProductDetails: Codable {
        
        
        public var slug: String?
        
        public var quantity: Int?
        
        public var attributes: [String: Any]?
        
        public var price: Price?
        
        public var images: [String]?
        
        public var uid: Int?
        
        public var itemCode: String?
        
        public var identifier: [String: Any]?
        
        public var sizes: [String]?
        
        public var countryOfOrigin: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case quantity = "quantity"
            
            case attributes = "attributes"
            
            case price = "price"
            
            case images = "images"
            
            case uid = "uid"
            
            case itemCode = "item_code"
            
            case identifier = "identifier"
            
            case sizes = "sizes"
            
            case countryOfOrigin = "country_of_origin"
            
        }

        public init(attributes: [String: Any]? = nil, countryOfOrigin: String? = nil, identifier: [String: Any]? = nil, images: [String]? = nil, itemCode: String? = nil, price: Price? = nil, quantity: Int? = nil, sizes: [String]? = nil, slug: String? = nil, uid: Int? = nil) {
            
            self.slug = slug
            
            self.quantity = quantity
            
            self.attributes = attributes
            
            self.price = price
            
            self.images = images
            
            self.uid = uid
            
            self.itemCode = itemCode
            
            self.identifier = identifier
            
            self.sizes = sizes
            
            self.countryOfOrigin = countryOfOrigin
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(Price.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    images = try container.decode([String].self, forKey: .images)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                    identifier = try container.decode([String: Any].self, forKey: .identifier)
                
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
                
            
            
                do {
                    countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductDetails
        Used By: Catalog
    */

    class ProductDetails: Codable {
        
        
        public var slug: String?
        
        public var quantity: Int?
        
        public var attributes: [String: Any]?
        
        public var price: Price?
        
        public var images: [String]?
        
        public var uid: Int?
        
        public var itemCode: String?
        
        public var identifier: [String: Any]?
        
        public var sizes: [String]?
        
        public var countryOfOrigin: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case quantity = "quantity"
            
            case attributes = "attributes"
            
            case price = "price"
            
            case images = "images"
            
            case uid = "uid"
            
            case itemCode = "item_code"
            
            case identifier = "identifier"
            
            case sizes = "sizes"
            
            case countryOfOrigin = "country_of_origin"
            
        }

        public init(attributes: [String: Any]? = nil, countryOfOrigin: String? = nil, identifier: [String: Any]? = nil, images: [String]? = nil, itemCode: String? = nil, price: Price? = nil, quantity: Int? = nil, sizes: [String]? = nil, slug: String? = nil, uid: Int? = nil) {
            
            self.slug = slug
            
            self.quantity = quantity
            
            self.attributes = attributes
            
            self.price = price
            
            self.images = images
            
            self.uid = uid
            
            self.itemCode = itemCode
            
            self.identifier = identifier
            
            self.sizes = sizes
            
            self.countryOfOrigin = countryOfOrigin
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(Price.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    images = try container.decode([String].self, forKey: .images)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                    identifier = try container.decode([String: Any].self, forKey: .identifier)
                
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
                
            
            
                do {
                    countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
        }
        
    }
}


