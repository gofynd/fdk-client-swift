

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: GetCollectionDetailNest
         Used By: Catalog
     */
    class GetCollectionDetailNest: Codable {
        public var query: [CollectionQuery]?

        public var isActive: Bool?

        public var badge: [String: Any]?

        public var allowSort: Bool?

        public var cron: [String: Any]?

        public var type: String?

        public var allowFacets: Bool?

        public var customJson: [String: Any]?

        public var description: String?

        public var sortOn: String?

        public var tag: [String]?

        public var uid: String?

        public var slug: String?

        public var banners: ImageUrls?

        public var visibleFacetsKeys: [String]?

        public var priority: Int?

        public var schedule: [String: Any]?

        public var name: String?

        public var logo: Media?

        public var meta: [String: Any]?

        public var action: ProductListingAction?

        public var appId: String?

        public enum CodingKeys: String, CodingKey {
            case query

            case isActive = "is_active"

            case badge

            case allowSort = "allow_sort"

            case cron

            case type

            case allowFacets = "allow_facets"

            case customJson = "_custom_json"

            case description

            case sortOn = "sort_on"

            case tag

            case uid

            case slug

            case banners

            case visibleFacetsKeys = "visible_facets_keys"

            case priority

            case schedule = "_schedule"

            case name

            case logo

            case meta

            case action

            case appId = "app_id"
        }

        public init(action: ProductListingAction? = nil, allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String? = nil, badge: [String: Any]? = nil, banners: ImageUrls? = nil, cron: [String: Any]? = nil, description: String? = nil, isActive: Bool? = nil, logo: Media? = nil, meta: [String: Any]? = nil, name: String? = nil, priority: Int? = nil, query: [CollectionQuery]? = nil, slug: String? = nil, sortOn: String? = nil, tag: [String]? = nil, type: String? = nil, uid: String? = nil, visibleFacetsKeys: [String]? = nil, customJson: [String: Any]? = nil, schedule: [String: Any]? = nil) {
            self.query = query

            self.isActive = isActive

            self.badge = badge

            self.allowSort = allowSort

            self.cron = cron

            self.type = type

            self.allowFacets = allowFacets

            self.customJson = customJson

            self.description = description

            self.sortOn = sortOn

            self.tag = tag

            self.uid = uid

            self.slug = slug

            self.banners = banners

            self.visibleFacetsKeys = visibleFacetsKeys

            self.priority = priority

            self.schedule = schedule

            self.name = name

            self.logo = logo

            self.meta = meta

            self.action = action

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                query = try container.decode([CollectionQuery].self, forKey: .query)

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
                badge = try container.decode([String: Any].self, forKey: .badge)

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
                cron = try container.decode([String: Any].self, forKey: .cron)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                sortOn = try container.decode(String.self, forKey: .sortOn)

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
                uid = try container.decode(String.self, forKey: .uid)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
                priority = try container.decode(Int.self, forKey: .priority)

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
                name = try container.decode(String.self, forKey: .name)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
