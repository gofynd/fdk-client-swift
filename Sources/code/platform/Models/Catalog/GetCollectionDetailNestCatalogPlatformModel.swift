

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: GetCollectionDetailNest
         Used By: Catalog
     */

    class GetCollectionDetailNest: Codable {
        public var tags: [String]?

        public var priority: Int?

        public var action: CollectionActionPage?

        public var uid: String?

        public var schedule: CollectionSchedule?

        public var slug: String?

        public var isActive: Bool?

        public var allowSort: Bool?

        public var name: String?

        public var meta: [String: Any]?

        public var banners: ImageUrls?

        public var query: [CollectionQuery]?

        public var visibleFacetsKeys: [String]?

        public var appId: String?

        public var logo: Media?

        public var description: String?

        public var allowFacets: Bool?

        public var type: String?

        public var badge: CollectionBadge?

        public enum CodingKeys: String, CodingKey {
            case tags

            case priority

            case action

            case uid

            case schedule = "_schedule"

            case slug

            case isActive = "is_active"

            case allowSort = "allow_sort"

            case name

            case meta

            case banners

            case query

            case visibleFacetsKeys = "visible_facets_keys"

            case appId = "app_id"

            case logo

            case description

            case allowFacets = "allow_facets"

            case type

            case badge
        }

        public init(action: CollectionActionPage? = nil, allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String? = nil, badge: CollectionBadge? = nil, banners: ImageUrls? = nil, description: String? = nil, isActive: Bool? = nil, logo: Media? = nil, meta: [String: Any]? = nil, name: String? = nil, priority: Int? = nil, query: [CollectionQuery]? = nil, slug: String? = nil, tags: [String]? = nil, type: String? = nil, uid: String? = nil, visibleFacetsKeys: [String]? = nil, schedule: CollectionSchedule? = nil) {
            self.tags = tags

            self.priority = priority

            self.action = action

            self.uid = uid

            self.schedule = schedule

            self.slug = slug

            self.isActive = isActive

            self.allowSort = allowSort

            self.name = name

            self.meta = meta

            self.banners = banners

            self.query = query

            self.visibleFacetsKeys = visibleFacetsKeys

            self.appId = appId

            self.logo = logo

            self.description = description

            self.allowFacets = allowFacets

            self.type = type

            self.badge = badge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(CollectionActionPage.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CollectionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([CollectionQuery].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(badge, forKey: .badge)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: GetCollectionDetailNest
         Used By: Catalog
     */

    class GetCollectionDetailNest: Codable {
        public var tags: [String]?

        public var priority: Int?

        public var action: CollectionActionPage?

        public var uid: String?

        public var schedule: CollectionSchedule?

        public var slug: String?

        public var isActive: Bool?

        public var allowSort: Bool?

        public var name: String?

        public var meta: [String: Any]?

        public var banners: ImageUrls?

        public var query: [CollectionQuery]?

        public var visibleFacetsKeys: [String]?

        public var appId: String?

        public var logo: Media?

        public var description: String?

        public var allowFacets: Bool?

        public var type: String?

        public var badge: CollectionBadge?

        public enum CodingKeys: String, CodingKey {
            case tags

            case priority

            case action

            case uid

            case schedule = "_schedule"

            case slug

            case isActive = "is_active"

            case allowSort = "allow_sort"

            case name

            case meta

            case banners

            case query

            case visibleFacetsKeys = "visible_facets_keys"

            case appId = "app_id"

            case logo

            case description

            case allowFacets = "allow_facets"

            case type

            case badge
        }

        public init(action: CollectionActionPage? = nil, allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String? = nil, badge: CollectionBadge? = nil, banners: ImageUrls? = nil, description: String? = nil, isActive: Bool? = nil, logo: Media? = nil, meta: [String: Any]? = nil, name: String? = nil, priority: Int? = nil, query: [CollectionQuery]? = nil, slug: String? = nil, tags: [String]? = nil, type: String? = nil, uid: String? = nil, visibleFacetsKeys: [String]? = nil, schedule: CollectionSchedule? = nil) {
            self.tags = tags

            self.priority = priority

            self.action = action

            self.uid = uid

            self.schedule = schedule

            self.slug = slug

            self.isActive = isActive

            self.allowSort = allowSort

            self.name = name

            self.meta = meta

            self.banners = banners

            self.query = query

            self.visibleFacetsKeys = visibleFacetsKeys

            self.appId = appId

            self.logo = logo

            self.description = description

            self.allowFacets = allowFacets

            self.type = type

            self.badge = badge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(CollectionActionPage.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CollectionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([CollectionQuery].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(badge, forKey: .badge)
        }
    }
}
