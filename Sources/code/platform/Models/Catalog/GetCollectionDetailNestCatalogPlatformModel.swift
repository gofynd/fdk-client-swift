

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetCollectionDetailNest
        Used By: Catalog
    */

    class GetCollectionDetailNest: Codable {
        
        
        public var schedule: CollectionSchedule?
        
        public var action: Action?
        
        public var allowFacets: Bool?
        
        public var allowSort: Bool?
        
        public var appId: String?
        
        public var badge: CollectionBadge?
        
        public var banners: ImageUrls?
        
        public var description: String?
        
        public var isActive: Bool?
        
        public var logo: Media?
        
        public var meta: [String: Any]?
        
        public var name: String?
        
        public var priority: Int?
        
        public var query: [CollectionQuery]?
        
        public var slug: String?
        
        public var tag: [String]?
        
        public var type: String?
        
        public var uid: String?
        
        public var visibleFacetsKeys: [String]?
        
        public var id: String?
        
        public var published: Bool?
        
        public var tags: [String]?
        
        public var sortOn: String?
        
        public var customJson: [String: Any]?
        
        public var localeLanguage: [String: Any]?
        
        public var seo: SeoDetail?
        
        public var isVisible: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "_schedule"
            
            case action = "action"
            
            case allowFacets = "allow_facets"
            
            case allowSort = "allow_sort"
            
            case appId = "app_id"
            
            case badge = "badge"
            
            case banners = "banners"
            
            case description = "description"
            
            case isActive = "is_active"
            
            case logo = "logo"
            
            case meta = "meta"
            
            case name = "name"
            
            case priority = "priority"
            
            case query = "query"
            
            case slug = "slug"
            
            case tag = "tag"
            
            case type = "type"
            
            case uid = "uid"
            
            case visibleFacetsKeys = "visible_facets_keys"
            
            case id = "_id"
            
            case published = "published"
            
            case tags = "tags"
            
            case sortOn = "sort_on"
            
            case customJson = "_custom_json"
            
            case localeLanguage = "_locale_language"
            
            case seo = "seo"
            
            case isVisible = "is_visible"
            
        }

        public init(action: Action? = nil, allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String? = nil, badge: CollectionBadge? = nil, banners: ImageUrls? = nil, description: String? = nil, isActive: Bool? = nil, isVisible: Bool? = nil, logo: Media? = nil, meta: [String: Any]? = nil, name: String? = nil, priority: Int? = nil, published: Bool? = nil, query: [CollectionQuery]? = nil, seo: SeoDetail? = nil, slug: String? = nil, sortOn: String? = nil, tag: [String]? = nil, tags: [String]? = nil, type: String? = nil, uid: String? = nil, visibleFacetsKeys: [String]? = nil, customJson: [String: Any]? = nil, id: String? = nil, localeLanguage: [String: Any]? = nil, schedule: CollectionSchedule? = nil) {
            
            self.schedule = schedule
            
            self.action = action
            
            self.allowFacets = allowFacets
            
            self.allowSort = allowSort
            
            self.appId = appId
            
            self.badge = badge
            
            self.banners = banners
            
            self.description = description
            
            self.isActive = isActive
            
            self.logo = logo
            
            self.meta = meta
            
            self.name = name
            
            self.priority = priority
            
            self.query = query
            
            self.slug = slug
            
            self.tag = tag
            
            self.type = type
            
            self.uid = uid
            
            self.visibleFacetsKeys = visibleFacetsKeys
            
            self.id = id
            
            self.published = published
            
            self.tags = tags
            
            self.sortOn = sortOn
            
            self.customJson = customJson
            
            self.localeLanguage = localeLanguage
            
            self.seo = seo
            
            self.isVisible = isVisible
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    schedule = try container.decode(CollectionSchedule.self, forKey: .schedule)
                
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
                    allowFacets = try container.decode(Bool.self, forKey: .allowFacets)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowSort = try container.decode(Bool.self, forKey: .allowSort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    badge = try container.decode(CollectionBadge.self, forKey: .badge)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode([CollectionQuery].self, forKey: .query)
                
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
                    tag = try container.decode([String].self, forKey: .tag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    published = try container.decode(Bool.self, forKey: .published)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sortOn = try container.decode(String.self, forKey: .sortOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    seo = try container.decode(SeoDetail.self, forKey: .seo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isVisible = try container.decode(Bool.self, forKey: .isVisible)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
            
            
            
            
            try? container.encodeIfPresent(allowSort, forKey: .allowSort)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(badge, forKey: .badge)
            
            
            
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(tag, forKey: .tag)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
            
            
            try? container.encodeIfPresent(isVisible, forKey: .isVisible)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetCollectionDetailNest
        Used By: Catalog
    */

    class GetCollectionDetailNest: Codable {
        
        
        public var schedule: CollectionSchedule?
        
        public var action: Action?
        
        public var allowFacets: Bool?
        
        public var allowSort: Bool?
        
        public var appId: String?
        
        public var badge: CollectionBadge?
        
        public var banners: ImageUrls?
        
        public var description: String?
        
        public var isActive: Bool?
        
        public var logo: Media?
        
        public var meta: [String: Any]?
        
        public var name: String?
        
        public var priority: Int?
        
        public var query: [CollectionQuery]?
        
        public var slug: String?
        
        public var tag: [String]?
        
        public var type: String?
        
        public var uid: String?
        
        public var visibleFacetsKeys: [String]?
        
        public var id: String?
        
        public var published: Bool?
        
        public var tags: [String]?
        
        public var sortOn: String?
        
        public var customJson: [String: Any]?
        
        public var localeLanguage: [String: Any]?
        
        public var seo: SeoDetail?
        
        public var isVisible: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case schedule = "_schedule"
            
            case action = "action"
            
            case allowFacets = "allow_facets"
            
            case allowSort = "allow_sort"
            
            case appId = "app_id"
            
            case badge = "badge"
            
            case banners = "banners"
            
            case description = "description"
            
            case isActive = "is_active"
            
            case logo = "logo"
            
            case meta = "meta"
            
            case name = "name"
            
            case priority = "priority"
            
            case query = "query"
            
            case slug = "slug"
            
            case tag = "tag"
            
            case type = "type"
            
            case uid = "uid"
            
            case visibleFacetsKeys = "visible_facets_keys"
            
            case id = "_id"
            
            case published = "published"
            
            case tags = "tags"
            
            case sortOn = "sort_on"
            
            case customJson = "_custom_json"
            
            case localeLanguage = "_locale_language"
            
            case seo = "seo"
            
            case isVisible = "is_visible"
            
        }

        public init(action: Action? = nil, allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String? = nil, badge: CollectionBadge? = nil, banners: ImageUrls? = nil, description: String? = nil, isActive: Bool? = nil, isVisible: Bool? = nil, logo: Media? = nil, meta: [String: Any]? = nil, name: String? = nil, priority: Int? = nil, published: Bool? = nil, query: [CollectionQuery]? = nil, seo: SeoDetail? = nil, slug: String? = nil, sortOn: String? = nil, tag: [String]? = nil, tags: [String]? = nil, type: String? = nil, uid: String? = nil, visibleFacetsKeys: [String]? = nil, customJson: [String: Any]? = nil, id: String? = nil, localeLanguage: [String: Any]? = nil, schedule: CollectionSchedule? = nil) {
            
            self.schedule = schedule
            
            self.action = action
            
            self.allowFacets = allowFacets
            
            self.allowSort = allowSort
            
            self.appId = appId
            
            self.badge = badge
            
            self.banners = banners
            
            self.description = description
            
            self.isActive = isActive
            
            self.logo = logo
            
            self.meta = meta
            
            self.name = name
            
            self.priority = priority
            
            self.query = query
            
            self.slug = slug
            
            self.tag = tag
            
            self.type = type
            
            self.uid = uid
            
            self.visibleFacetsKeys = visibleFacetsKeys
            
            self.id = id
            
            self.published = published
            
            self.tags = tags
            
            self.sortOn = sortOn
            
            self.customJson = customJson
            
            self.localeLanguage = localeLanguage
            
            self.seo = seo
            
            self.isVisible = isVisible
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    schedule = try container.decode(CollectionSchedule.self, forKey: .schedule)
                
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
                    allowFacets = try container.decode(Bool.self, forKey: .allowFacets)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowSort = try container.decode(Bool.self, forKey: .allowSort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    badge = try container.decode(CollectionBadge.self, forKey: .badge)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode([CollectionQuery].self, forKey: .query)
                
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
                    tag = try container.decode([String].self, forKey: .tag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    published = try container.decode(Bool.self, forKey: .published)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sortOn = try container.decode(String.self, forKey: .sortOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    seo = try container.decode(SeoDetail.self, forKey: .seo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isVisible = try container.decode(Bool.self, forKey: .isVisible)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
            
            
            
            
            try? container.encodeIfPresent(allowSort, forKey: .allowSort)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(badge, forKey: .badge)
            
            
            
            
            try? container.encodeIfPresent(banners, forKey: .banners)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(tag, forKey: .tag)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
            
            
            try? container.encodeIfPresent(isVisible, forKey: .isVisible)
            
            
        }
        
    }
}


