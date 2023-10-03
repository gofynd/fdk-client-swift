

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Child
        Used By: Catalog
    */

    class Child: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var action: Action?
        
        public var banners: ImageUrls?
        
        public var childs: [SecondLevelChild]?
        
        public var name: String?
        
        public var slug: String?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case action = "action"
            
            case banners = "banners"
            
            case childs = "childs"
            
            case name = "name"
            
            case slug = "slug"
            
            case uid = "uid"
            
        }

        public init(action: Action? = nil, banners: ImageUrls? = nil, childs: [SecondLevelChild]? = nil, name: String? = nil, slug: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.action = action
            
            self.banners = banners
            
            self.childs = childs
            
            self.name = name
            
            self.slug = slug
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(Action.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    childs = try container.decode([SecondLevelChild].self, forKey: .childs)
                
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
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            
            
            
            try? container.encodeIfPresent(childs, forKey: .childs)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Child
        Used By: Catalog
    */

    class Child: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var action: Action?
        
        public var banners: ImageUrls?
        
        public var childs: [SecondLevelChild]?
        
        public var name: String?
        
        public var slug: String?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case action = "action"
            
            case banners = "banners"
            
            case childs = "childs"
            
            case name = "name"
            
            case slug = "slug"
            
            case uid = "uid"
            
        }

        public init(action: Action? = nil, banners: ImageUrls? = nil, childs: [SecondLevelChild]? = nil, name: String? = nil, slug: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.action = action
            
            self.banners = banners
            
            self.childs = childs
            
            self.name = name
            
            self.slug = slug
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(Action.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    childs = try container.decode([SecondLevelChild].self, forKey: .childs)
                
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
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            
            
            
            try? container.encodeIfPresent(childs, forKey: .childs)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}


