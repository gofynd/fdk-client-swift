

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CollectionItemV2
        Used By: Catalog
    */

    class CollectionItemV2: Codable {
        
        
        public var name: String
        
        public var shortDescription: String?
        
        public var medias: [Media]?
        
        public var slug: String
        
        public var uid: Int
        
        public var itemCode: String
        
        public var itemType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case shortDescription = "short_description"
            
            case medias = "medias"
            
            case slug = "slug"
            
            case uid = "uid"
            
            case itemCode = "item_code"
            
            case itemType = "item_type"
            
        }

        public init(itemCode: String, itemType: String, medias: [Media]? = nil, name: String, shortDescription: String? = nil, slug: String, uid: Int) {
            
            self.name = name
            
            self.shortDescription = shortDescription
            
            self.medias = medias
            
            self.slug = slug
            
            self.uid = uid
            
            self.itemCode = itemCode
            
            self.itemType = itemType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    shortDescription = try container.decode(String.self, forKey: .shortDescription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                itemCode = try container.decode(String.self, forKey: .itemCode)
                
            
            
            
                itemType = try container.decode(String.self, forKey: .itemType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            
            
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CollectionItemV2
        Used By: Catalog
    */

    class CollectionItemV2: Codable {
        
        
        public var name: String
        
        public var shortDescription: String?
        
        public var medias: [Media]?
        
        public var slug: String
        
        public var uid: Int
        
        public var itemCode: String
        
        public var itemType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case shortDescription = "short_description"
            
            case medias = "medias"
            
            case slug = "slug"
            
            case uid = "uid"
            
            case itemCode = "item_code"
            
            case itemType = "item_type"
            
        }

        public init(itemCode: String, itemType: String, medias: [Media]? = nil, name: String, shortDescription: String? = nil, slug: String, uid: Int) {
            
            self.name = name
            
            self.shortDescription = shortDescription
            
            self.medias = medias
            
            self.slug = slug
            
            self.uid = uid
            
            self.itemCode = itemCode
            
            self.itemType = itemType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    shortDescription = try container.decode(String.self, forKey: .shortDescription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                itemCode = try container.decode(String.self, forKey: .itemCode)
                
            
            
            
                itemType = try container.decode(String.self, forKey: .itemType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            
            
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
        }
        
    }
}


