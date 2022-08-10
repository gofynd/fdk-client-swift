

import Foundation
public extension PlatformClient {
    /*
         Model: CreateCollection
         Used By: Catalog
     */

    class CreateCollection: Codable {
        public var isActive: Bool?

        public var badge: CollectionBadge?

        public var schedule: Schedule?

        public var tags: [String]?

        public var visibleFacetsKeys: [String]?

        public var isVisible: Bool?

        public var published: Bool?

        public var banners: CollectionBanner

        public var allowSort: Bool?

        public var logo: CollectionImage

        public var modifiedBy: UserInfo?

        public var appId: String

        public var seo: SeoDetail?

        public var description: String?

        public var sortOn: String?

        public var createdBy: UserInfo?

        public var meta: [String: Any]?

        public var customJson: [String: Any]?

        public var name: String

        public var type: String

        public var query: [String: Any]?

        public var allowFacets: Bool?

        public var slug: String

        public var localeLanguage: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case badge

            case schedule = "_schedule"

            case tags

            case visibleFacetsKeys = "visible_facets_keys"

            case isVisible = "is_visible"

            case published

            case banners

            case allowSort = "allow_sort"

            case logo

            case modifiedBy = "modified_by"

            case appId = "app_id"

            case seo

            case description

            case sortOn = "sort_on"

            case createdBy = "created_by"

            case meta

            case customJson = "_custom_json"

            case name

            case type

            case query

            case allowFacets = "allow_facets"

            case slug

            case localeLanguage = "_locale_language"
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, appId: String, badge: CollectionBadge? = nil, banners: CollectionBanner, createdBy: UserInfo? = nil, description: String? = nil, isActive: Bool? = nil, isVisible: Bool? = nil, logo: CollectionImage, meta: [String: Any]? = nil, modifiedBy: UserInfo? = nil, name: String, published: Bool? = nil, query: [String: Any]? = nil, seo: SeoDetail? = nil, slug: String, sortOn: String? = nil, tags: [String]? = nil, type: String, visibleFacetsKeys: [String]? = nil, customJson: [String: Any]? = nil, localeLanguage: [String: Any]? = nil, schedule: Schedule? = nil) {
            self.isActive = isActive

            self.badge = badge

            self.schedule = schedule

            self.tags = tags

            self.visibleFacetsKeys = visibleFacetsKeys

            self.isVisible = isVisible

            self.published = published

            self.banners = banners

            self.allowSort = allowSort

            self.logo = logo

            self.modifiedBy = modifiedBy

            self.appId = appId

            self.seo = seo

            self.description = description

            self.sortOn = sortOn

            self.createdBy = createdBy

            self.meta = meta

            self.customJson = customJson

            self.name = name

            self.type = type

            self.query = query

            self.allowFacets = allowFacets

            self.slug = slug

            self.localeLanguage = localeLanguage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                schedule = try container.decode(Schedule.self, forKey: .schedule)

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

            do {
                isVisible = try container.decode(Bool.self, forKey: .isVisible)

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

            banners = try container.decode(CollectionBanner.self, forKey: .banners)

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(CollectionImage.self, forKey: .logo)

            do {
                modifiedBy = try container.decode(UserInfo.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            name = try container.decode(String.self, forKey: .name)

            type = try container.decode(String.self, forKey: .type)

            do {
                query = try container.decode([String: Any].self, forKey: .query)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(isVisible, forKey: .isVisible)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(sortOn, forKey: .sortOn)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
        }
    }
}
