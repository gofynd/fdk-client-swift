

import Foundation
public extension PlatformClient {
    /*
         Model: CreateCollection
         Used By: Catalog
     */

    class CreateCollection: Codable {
        public var allowFacets: Bool?

        public var isVisible: Bool?

        public var description: String?

        public var published: Bool?

        public var customJson: [String: Any]?

        public var meta: [String: Any]?

        public var visibleFacetsKeys: [String]?

        public var localeLanguage: [String: Any]?

        public var createdBy: UserInfo?

        public var badge: CollectionBadge?

        public var appId: String

        public var modifiedBy: UserInfo?

        public var slug: String

        public var type: String

        public var isActive: Bool?

        public var allowSort: Bool?

        public var name: String

        public var banners: CollectionBanner

        public var query: [CollectionQuery]?

        public var seo: SeoDetail?

        public var tags: [String]?

        public var priority: Int?

        public var logo: CollectionImage

        public var sortOn: String?

        public var schedule: CollectionSchedule?

        public enum CodingKeys: String, CodingKey {
            case allowFacets = "allow_facets"

            case isVisible = "is_visible"

            case description

            case published

            case customJson = "_custom_json"

            case meta

            case visibleFacetsKeys = "visible_facets_keys"

            case localeLanguage = "_locale_language"

            case createdBy = "created_by"

            case badge

            case appId = "app_id"

            case modifiedBy = "modified_by"

            case slug

            case type

            case isActive = "is_active"

            case allowSort = "allow_sort"

            case name

            case banners

            case query

            case seo

            case tags

            case priority

            case logo

            case sortOn = "sort_on"

            case schedule = "_schedule"
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String, badge: CollectionBadge? = nil, banners: CollectionBanner, createdBy: UserInfo? = nil, description: String? = nil, isActive: Bool? = nil, isVisible: Bool? = nil, logo: CollectionImage, meta: [String: Any]? = nil, modifiedBy: UserInfo? = nil, name: String, priority: Int? = nil, published: Bool? = nil, query: [CollectionQuery]? = nil, seo: SeoDetail? = nil, slug: String, sortOn: String? = nil, tags: [String]? = nil, type: String, visibleFacetsKeys: [String]? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil, schedule: CollectionSchedule? = nil) {
            self.allowFacets = allowFacets

            self.isVisible = isVisible

            self.description = description

            self.published = published

            self.customJson = customJson

            self.meta = meta

            self.visibleFacetsKeys = visibleFacetsKeys

            self.localeLanguage = localeLanguage

            self.createdBy = createdBy

            self.badge = badge

            self.appId = appId

            self.modifiedBy = modifiedBy

            self.slug = slug

            self.type = type

            self.isActive = isActive

            self.allowSort = allowSort

            self.name = name

            self.banners = banners

            self.query = query

            self.seo = seo

            self.tags = tags

            self.priority = priority

            self.logo = logo

            self.sortOn = sortOn

            self.schedule = schedule
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

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
                description = try container.decode(String.self, forKey: .description)

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

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

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
                badge = try container.decode(CollectionBadge.self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            type = try container.decode(String.self, forKey: .type)

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

            name = try container.decode(String.self, forKey: .name)

            banners = try container.decode(CollectionBanner.self, forKey: .banners)

            do {
                query = try container.decode([CollectionQuery].self, forKey: .query)

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

            logo = try container.decode(CollectionImage.self, forKey: .logo)

            do {
                sortOn = try container.decode(String.self, forKey: .sortOn)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }
}
