

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateCollection
         Used By: Catalog
     */

    class UpdateCollection: Codable {
        public var slug: String?

        public var localeLanguage: [String: Any]?

        public var meta: [String: Any]?

        public var isVisible: Bool?

        public var logo: CollectionImage?

        public var schedule: Schedule?

        public var badge: CollectionBadge?

        public var allowFacets: Bool?

        public var query: [CollectionQuery]?

        public var priority: Int?

        public var tags: [String]?

        public var banners: CollectionBanner?

        public var allowSort: Bool?

        public var name: String?

        public var isActive: Bool?

        public var sortOn: String?

        public var modifiedBy: UserInfo?

        public var type: String?

        public var published: Bool?

        public var seo: SeoDetail?

        public var visibleFacetsKeys: [String]?

        public var description: String?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case slug

            case localeLanguage = "_locale_language"

            case meta

            case isVisible = "is_visible"

            case logo

            case schedule = "_schedule"

            case badge

            case allowFacets = "allow_facets"

            case query

            case priority

            case tags

            case banners

            case allowSort = "allow_sort"

            case name

            case isActive = "is_active"

            case sortOn = "sort_on"

            case modifiedBy = "modified_by"

            case type

            case published

            case seo

            case visibleFacetsKeys = "visible_facets_keys"

            case description

            case customJson = "_custom_json"
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, badge: CollectionBadge? = nil, banners: CollectionBanner? = nil, description: String? = nil, isActive: Bool? = nil, isVisible: Bool? = nil, logo: CollectionImage? = nil, meta: [String: Any]? = nil, modifiedBy: UserInfo? = nil, name: String? = nil, priority: Int? = nil, published: Bool? = nil, query: [CollectionQuery]? = nil, seo: SeoDetail? = nil, slug: String? = nil, sortOn: String? = nil, tags: [String]? = nil, type: String? = nil, visibleFacetsKeys: [String]? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil, schedule: Schedule? = nil) {
            self.slug = slug

            self.localeLanguage = localeLanguage

            self.meta = meta

            self.isVisible = isVisible

            self.logo = logo

            self.schedule = schedule

            self.badge = badge

            self.allowFacets = allowFacets

            self.query = query

            self.priority = priority

            self.tags = tags

            self.banners = banners

            self.allowSort = allowSort

            self.name = name

            self.isActive = isActive

            self.sortOn = sortOn

            self.modifiedBy = modifiedBy

            self.type = type

            self.published = published

            self.seo = seo

            self.visibleFacetsKeys = visibleFacetsKeys

            self.description = description

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

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
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(CollectionImage.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(Schedule.self, forKey: .schedule)

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

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

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
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(CollectionBanner.self, forKey: .banners)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)

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
                published = try container.decode(Bool.self, forKey: .published)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seo = try container.decode(SeoDetail.self, forKey: .seo)

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
                description = try container.decode(String.self, forKey: .description)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
