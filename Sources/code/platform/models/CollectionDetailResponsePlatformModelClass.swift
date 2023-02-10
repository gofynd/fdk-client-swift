

import Foundation
public extension PlatformClient {
    /*
         Model: CollectionDetailResponse
         Used By: Catalog
     */

    class CollectionDetailResponse: Codable {
        public var cron: [String: Any]?

        public var priority: Int?

        public var slug: String?

        public var tag: [String]?

        public var type: String?

        public var allowFacets: Bool?

        public var visibleFacetsKeys: [String]?

        public var query: [CollectionQuery]?

        public var description: String?

        public var name: String?

        public var isActive: Bool?

        public var appId: String?

        public var meta: [String: Any]?

        public var schedule: [String: Any]?

        public var allowSort: Bool?

        public var banners: ImageUrls?

        public var logo: Media1?

        public var badge: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case cron

            case priority

            case slug

            case tag

            case type

            case allowFacets = "allow_facets"

            case visibleFacetsKeys = "visible_facets_keys"

            case query

            case description

            case name

            case isActive = "is_active"

            case appId = "app_id"

            case meta

            case schedule = "_schedule"

            case allowSort = "allow_sort"

            case banners

            case logo

            case badge
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String? = nil, badge: [String: Any]? = nil, banners: ImageUrls? = nil, cron: [String: Any]? = nil, description: String? = nil, isActive: Bool? = nil, logo: Media1? = nil, meta: [String: Any]? = nil, name: String? = nil, priority: Int? = nil, query: [CollectionQuery]? = nil, slug: String? = nil, tag: [String]? = nil, type: String? = nil, visibleFacetsKeys: [String]? = nil, schedule: [String: Any]? = nil) {
            self.cron = cron

            self.priority = priority

            self.slug = slug

            self.tag = tag

            self.type = type

            self.allowFacets = allowFacets

            self.visibleFacetsKeys = visibleFacetsKeys

            self.query = query

            self.description = description

            self.name = name

            self.isActive = isActive

            self.appId = appId

            self.meta = meta

            self.schedule = schedule

            self.allowSort = allowSort

            self.banners = banners

            self.logo = logo

            self.badge = badge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cron = try container.decode([String: Any].self, forKey: .cron)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode([String].self, forKey: .tag)

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
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

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
                query = try container.decode([CollectionQuery].self, forKey: .query)

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
                name = try container.decode(String.self, forKey: .name)

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
                appId = try container.decode(String.self, forKey: .appId)

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
                schedule = try container.decode([String: Any].self, forKey: .schedule)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media1.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                badge = try container.decode([String: Any].self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(badge, forKey: .badge)
        }
    }
}
