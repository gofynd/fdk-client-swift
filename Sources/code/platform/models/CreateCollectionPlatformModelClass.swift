

import Foundation
public extension PlatformClient {
    /*
         Model: CreateCollection
         Used By: Catalog
     */

    class CreateCollection: Codable {
        public var badge: CollectionBadge?

        public var isVisible: Bool?

        public var tags: [String]?

        public var visibleFacetsKeys: [String]?

        public var name: String

        public var schedule: Schedule?

        public var meta: [String: Any]?

        public var sortOn: String?

        public var createdBy: UserInfo?

        public var seo: SeoDetail?

        public var appId: String

        public var localeLanguage: [String: Any]?

        public var query: [CollectionQuery]?

        public var logo: CollectionImage

        public var description: String?

        public var priority: Int?

        public var isActive: Bool?

        public var banners: CollectionBanner

        public var type: String

        public var allowFacets: Bool?

        public var published: Bool?

        public var customJson: [String: Any]?

        public var slug: String

        public var allowSort: Bool?

        public var modifiedBy: UserInfo?

        public enum CodingKeys: String, CodingKey {
            case badge

            case isVisible = "is_visible"

            case tags

            case visibleFacetsKeys = "visible_facets_keys"

            case name

            case schedule = "_schedule"

            case meta

            case sortOn = "sort_on"

            case createdBy = "created_by"

            case seo

            case appId = "app_id"

            case localeLanguage = "_locale_language"

            case query

            case logo

            case description

            case priority

            case isActive = "is_active"

            case banners

            case type

            case allowFacets = "allow_facets"

            case published

            case customJson = "_custom_json"

            case slug

            case allowSort = "allow_sort"

            case modifiedBy = "modified_by"
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String, badge: CollectionBadge? = nil, banners: CollectionBanner, createdBy: UserInfo? = nil, description: String? = nil, isActive: Bool? = nil, isVisible: Bool? = nil, logo: CollectionImage, meta: [String: Any]? = nil, modifiedBy: UserInfo? = nil, name: String, priority: Int? = nil, published: Bool? = nil, query: [CollectionQuery]? = nil, seo: SeoDetail? = nil, slug: String, sortOn: String? = nil, tags: [String]? = nil, type: String, visibleFacetsKeys: [String]? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil, schedule: Schedule? = nil) {
            self.badge = badge

            self.isVisible = isVisible

            self.tags = tags

            self.visibleFacetsKeys = visibleFacetsKeys

            self.name = name

            self.schedule = schedule

            self.meta = meta

            self.sortOn = sortOn

            self.createdBy = createdBy

            self.seo = seo

            self.appId = appId

            self.localeLanguage = localeLanguage

            self.query = query

            self.logo = logo

            self.description = description

            self.priority = priority

            self.isActive = isActive

            self.banners = banners

            self.type = type

            self.allowFacets = allowFacets

            self.published = published

            self.customJson = customJson

            self.slug = slug

            self.allowSort = allowSort

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

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
                tags = try container.decode([String].self, forKey: .tags)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                schedule = try container.decode(Schedule.self, forKey: .schedule)

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
                sortOn = try container.decode(String.self, forKey: .sortOn)

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
                seo = try container.decode(SeoDetail.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

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

            logo = try container.decode(CollectionImage.self, forKey: .logo)

            do {
                description = try container.decode(String.self, forKey: .description)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            banners = try container.decode(CollectionBanner.self, forKey: .banners)

            type = try container.decode(String.self, forKey: .type)

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encode(modifiedBy, forKey: .modifiedBy)
        }
    }
}
