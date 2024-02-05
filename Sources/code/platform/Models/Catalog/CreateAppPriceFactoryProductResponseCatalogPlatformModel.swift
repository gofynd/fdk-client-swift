

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProductResponse
        Used By: Catalog
    */

    class CreateAppPriceFactoryProductResponse: Codable {
        
        
        public var itemId: Int?
        
        public var itemName: String?
        
        public var itemCode: String?
        
        public var brand: String?
        
        public var category: String?
        
        public var factoryTypeId: [String]?
        
        public var media: [String: Any]?
        
        public var sizes: [String: Any]?
        
        public var companySizes: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case itemName = "item_name"
            
            case itemCode = "item_code"
            
            case brand = "brand"
            
            case category = "category"
            
            case factoryTypeId = "factory_type_id"
            
            case media = "media"
            
            case sizes = "sizes"
            
            case companySizes = "company_sizes"
            
        }

        public init(brand: String? = nil, category: String? = nil, companySizes: [String: Any]? = nil, factoryTypeId: [String]? = nil, itemCode: String? = nil, itemId: Int? = nil, itemName: String? = nil, media: [String: Any]? = nil, sizes: [String: Any]? = nil) {
            
            self.itemId = itemId
            
            self.itemName = itemName
            
            self.itemCode = itemCode
            
            self.brand = brand
            
            self.category = category
            
            self.factoryTypeId = factoryTypeId
            
            self.media = media
            
            self.sizes = sizes
            
            self.companySizes = companySizes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemName = try container.decode(String.self, forKey: .itemName)
                
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
                    brand = try container.decode(String.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    category = try container.decode(String.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    factoryTypeId = try container.decode([String].self, forKey: .factoryTypeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    media = try container.decode([String: Any].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizes = try container.decode([String: Any].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companySizes = try container.decode([String: Any].self, forKey: .companySizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(itemName, forKey: .itemName)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(factoryTypeId, forKey: .factoryTypeId)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(companySizes, forKey: .companySizes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProductResponse
        Used By: Catalog
    */

    class CreateAppPriceFactoryProductResponse: Codable {
        
        
        public var itemId: Int?
        
        public var itemName: String?
        
        public var itemCode: String?
        
        public var brand: String?
        
        public var category: String?
        
        public var factoryTypeId: [String]?
        
        public var media: [String: Any]?
        
        public var sizes: [String: Any]?
        
        public var companySizes: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case itemName = "item_name"
            
            case itemCode = "item_code"
            
            case brand = "brand"
            
            case category = "category"
            
            case factoryTypeId = "factory_type_id"
            
            case media = "media"
            
            case sizes = "sizes"
            
            case companySizes = "company_sizes"
            
        }

        public init(brand: String? = nil, category: String? = nil, companySizes: [String: Any]? = nil, factoryTypeId: [String]? = nil, itemCode: String? = nil, itemId: Int? = nil, itemName: String? = nil, media: [String: Any]? = nil, sizes: [String: Any]? = nil) {
            
            self.itemId = itemId
            
            self.itemName = itemName
            
            self.itemCode = itemCode
            
            self.brand = brand
            
            self.category = category
            
            self.factoryTypeId = factoryTypeId
            
            self.media = media
            
            self.sizes = sizes
            
            self.companySizes = companySizes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemName = try container.decode(String.self, forKey: .itemName)
                
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
                    brand = try container.decode(String.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    category = try container.decode(String.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    factoryTypeId = try container.decode([String].self, forKey: .factoryTypeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    media = try container.decode([String: Any].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizes = try container.decode([String: Any].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companySizes = try container.decode([String: Any].self, forKey: .companySizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(itemName, forKey: .itemName)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(factoryTypeId, forKey: .factoryTypeId)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(companySizes, forKey: .companySizes)
            
            
        }
        
    }
}


