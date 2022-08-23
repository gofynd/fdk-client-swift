

import Foundation
public extension PlatformClient {
    /*
         Model: CreateCollection
         Used By: Catalog
     */

    class CreateCollection: Codable {
        public var priority: Int?

        public var query: [CollectionQuery]?

        public var appId: String

        public var name: String

        public var logo: CollectionImage

        public var tags: [String]?

        public var schedule: Schedule?

        public var allowSort: Bool?

        public var slug: String

        public var sortOn: String?

        public var badge: CollectionBadge?

        public var meta: [String: Any]?

        public var allowFacets: Bool?

        public var seo: SeoDetail?

        public var description: String?

        public var localeLanguage: [String: Any]?

        public var isVisible: Bool?

        public var modifiedBy: UserInfo?

        public var isActive: Bool?

        public var type: String

        public var customJson: [String: Any]?

        public var createdBy: UserInfo?

        public var published: Bool?

        public var visibleFacetsKeys: [String]?

        public var banners: CollectionBanner

        public enum CodingKeys: String, CodingKey {
            case priority

            case query

            case appId = "app_id"

            case name

            case logo

            case tags

            case schedule = "_schedule"

            case allowSort = "allow_sort"

            case slug

            case sortOn = "sort_on"

            case badge

            case meta

            case allowFacets = "allow_facets"

            case seo

            case description

            case localeLanguage = "_locale_language"

            case isVisible = "is_visible"

            case modifiedBy = "modified_by"

            case isActive = "is_active"

            case type

            case customJson = "_custom_json"

            case createdBy = "created_by"

            case published

            case visibleFacetsKeys = "visible_facets_keys"

            case banners
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String, badge: CollectionBadge? = nil, banners: CollectionBanner, createdBy: UserInfo? = nil, description: String? = nil, isActive: Bool? = nil, isVisible: Bool? = nil, logo: CollectionImage, meta: [String: Any]? = nil, modifiedBy: UserInfo? = nil, name: String, priority: Int? = nil, published: Bool? = nil, query: [CollectionQuery]? = nil, seo: SeoDetail? = nil, slug: String, sortOn: String? = nil, tags: [String]? = nil, type: String, visibleFacetsKeys: [String]? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil, schedule: Schedule? = nil) {
            self.priority = priority

            self.query = query

            self.appId = appId

            self.name = name

            self.logo = logo

            self.tags = tags

            self.schedule = schedule

            self.allowSort = allowSort

            self.slug = slug

            self.sortOn = sortOn

            self.badge = badge

            self.meta = meta

            self.allowFacets = allowFacets

            self.seo = seo

            self.description = description

            self.localeLanguage = localeLanguage

            self.isVisible = isVisible

            self.modifiedBy = modifiedBy

            self.isActive = isActive

            self.type = type

            self.customJson = customJson

            self.createdBy = createdBy

            self.published = published

            self.visibleFacetsKeys = visibleFacetsKeys

            self.banners = banners
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

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

            appId = try container.decode(String.self, forKey: .appId)

            name = try container.decode(String.self, forKey: .name)

            logo = try container.decode(CollectionImage.self, forKey: .logo)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                sortOn = try container.decode(String.self, forKey: .sortOn)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                seo = try container.decode(SeoDetail.self, forKey: .seo)

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
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

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
                modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)

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

            type = try container.decode(String.self, forKey: .type)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserInfo.self, forKey: .createdBy)

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
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            banners = try container.decode(CollectionBanner.self, forKey: .banners)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(banners, forKey: .banners)
        }
    }
}
