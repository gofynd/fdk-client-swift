

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductVariants
        Used By: Catalog
    */

    class ProductVariants: Codable {
        
        
        public var categoryUid: Int?
        
        public var media: [Media]?
        
        public var itemCode: String?
        
        public var brandUid: Int?
        
        public var uid: Int?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case categoryUid = "category_uid"
            
            case media = "media"
            
            case itemCode = "item_code"
            
            case brandUid = "brand_uid"
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(brandUid: Int? = nil, categoryUid: Int? = nil, itemCode: String? = nil, media: [Media]? = nil, name: String? = nil, uid: Int? = nil) {
            
            self.categoryUid = categoryUid
            
            self.media = media
            
            self.itemCode = itemCode
            
            self.brandUid = brandUid
            
            self.uid = uid
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    categoryUid = try container.decode(Int.self, forKey: .categoryUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    media = try container.decode([Media].self, forKey: .media)
                
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
                    brandUid = try container.decode(Int.self, forKey: .brandUid)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductVariants
        Used By: Catalog
    */

    class ProductVariants: Codable {
        
        
        public var categoryUid: Int?
        
        public var media: [Media]?
        
        public var itemCode: String?
        
        public var brandUid: Int?
        
        public var uid: Int?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case categoryUid = "category_uid"
            
            case media = "media"
            
            case itemCode = "item_code"
            
            case brandUid = "brand_uid"
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(brandUid: Int? = nil, categoryUid: Int? = nil, itemCode: String? = nil, media: [Media]? = nil, name: String? = nil, uid: Int? = nil) {
            
            self.categoryUid = categoryUid
            
            self.media = media
            
            self.itemCode = itemCode
            
            self.brandUid = brandUid
            
            self.uid = uid
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    categoryUid = try container.decode(Int.self, forKey: .categoryUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    media = try container.decode([Media].self, forKey: .media)
                
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
                    brandUid = try container.decode(Int.self, forKey: .brandUid)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(categoryUid, forKey: .categoryUid)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}


