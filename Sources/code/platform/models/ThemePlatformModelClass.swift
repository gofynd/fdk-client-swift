import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: AvailablePageSchema
         Used By: Theme
     */

    class AvailablePageSchema: Codable {
        public var value: String?

        public var text: String?

        public var path: String?

        public var type: String?

        public var sections: [AvailablePageSchemaSections]?

        public var sectionsMeta: [AvailablePageSectionMetaAttributes]?

        public var theme: String?

        public var seo: AvailablePageSeo?

        public var props: [[String: Any]]?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case text

            case path

            case type

            case sections

            case sectionsMeta = "sections_meta"

            case theme

            case seo

            case props

            case id = "_id"
        }

        public init(path: String?, props: [[String: Any]]?, sections: [AvailablePageSchemaSections]?, sectionsMeta: [AvailablePageSectionMetaAttributes]?, seo: AvailablePageSeo?, text: String?, theme: String?, type: String?, value: String?, id: String?) {
            self.value = value

            self.text = text

            self.path = path

            self.type = type

            self.sections = sections

            self.sectionsMeta = sectionsMeta

            self.theme = theme

            self.seo = seo

            self.props = props

            self.id = id
        }

        public func duplicate() -> AvailablePageSchema {
            let dict = self.dictionary!
            let copy = AvailablePageSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                path = try container.decode(String.self, forKey: .path)

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
                sections = try container.decode([AvailablePageSchemaSections].self, forKey: .sections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sectionsMeta = try container.decode([AvailablePageSectionMetaAttributes].self, forKey: .sectionsMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                theme = try container.decode(String.self, forKey: .theme)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seo = try container.decode(AvailablePageSeo.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                props = try container.decode([[String: Any]].self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(path, forKey: .path)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(sections, forKey: .sections)

            try? container.encodeIfPresent(sectionsMeta, forKey: .sectionsMeta)

            try? container.encodeIfPresent(theme, forKey: .theme)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(props, forKey: .props)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: AvailablePageSectionMetaAttributes
         Used By: Theme
     */

    class AvailablePageSectionMetaAttributes: Codable {
        public var attributes: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case attributes
        }

        public init(attributes: [String: Any]?) {
            self.attributes = attributes
        }

        public func duplicate() -> AvailablePageSectionMetaAttributes {
            let dict = self.dictionary!
            let copy = AvailablePageSectionMetaAttributes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)
        }
    }

    /*
         Model: AvailablePageSeo
         Used By: Theme
     */

    class AvailablePageSeo: Codable {
        public var title: String?

        public var description: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case description

            case id = "_id"
        }

        public init(description: String?, title: String?, id: String?) {
            self.title = title

            self.description = description

            self.id = id
        }

        public func duplicate() -> AvailablePageSeo {
            let dict = self.dictionary!
            let copy = AvailablePageSeo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: AvailablePageSchemaSections
         Used By: Theme
     */

    class AvailablePageSchemaSections: Codable {
        public var name: String?

        public var label: String?

        public var props: [String: Any]?

        public var blocks: [[String: Any]]?

        public var preset: [String: Any]?

        public var predicate: AvailablePagePredicate?

        public enum CodingKeys: String, CodingKey {
            case name

            case label

            case props

            case blocks

            case preset

            case predicate
        }

        public init(blocks: [[String: Any]]?, label: String?, name: String?, predicate: AvailablePagePredicate?, preset: [String: Any]?, props: [String: Any]?) {
            self.name = name

            self.label = label

            self.props = props

            self.blocks = blocks

            self.preset = preset

            self.predicate = predicate
        }

        public func duplicate() -> AvailablePageSchemaSections {
            let dict = self.dictionary!
            let copy = AvailablePageSchemaSections(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                label = try container.decode(String.self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                props = try container.decode([String: Any].self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                blocks = try container.decode([[String: Any]].self, forKey: .blocks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                preset = try container.decode([String: Any].self, forKey: .preset)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                predicate = try container.decode(AvailablePagePredicate.self, forKey: .predicate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(props, forKey: .props)

            try? container.encodeIfPresent(blocks, forKey: .blocks)

            try? container.encodeIfPresent(preset, forKey: .preset)

            try? container.encodeIfPresent(predicate, forKey: .predicate)
        }
    }

    /*
         Model: AvailablePageScreenPredicate
         Used By: Theme
     */

    class AvailablePageScreenPredicate: Codable {
        public var mobile: Bool?

        public var desktop: Bool?

        public var tablet: Bool?

        public enum CodingKeys: String, CodingKey {
            case mobile

            case desktop

            case tablet
        }

        public init(desktop: Bool?, mobile: Bool?, tablet: Bool?) {
            self.mobile = mobile

            self.desktop = desktop

            self.tablet = tablet
        }

        public func duplicate() -> AvailablePageScreenPredicate {
            let dict = self.dictionary!
            let copy = AvailablePageScreenPredicate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                desktop = try container.decode(Bool.self, forKey: .desktop)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tablet = try container.decode(Bool.self, forKey: .tablet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(desktop, forKey: .desktop)

            try? container.encodeIfPresent(tablet, forKey: .tablet)
        }
    }

    /*
         Model: AvailablePageUserPredicate
         Used By: Theme
     */

    class AvailablePageUserPredicate: Codable {
        public var authenticated: Bool?

        public var anonymous: Bool?

        public enum CodingKeys: String, CodingKey {
            case authenticated

            case anonymous
        }

        public init(anonymous: Bool?, authenticated: Bool?) {
            self.authenticated = authenticated

            self.anonymous = anonymous
        }

        public func duplicate() -> AvailablePageUserPredicate {
            let dict = self.dictionary!
            let copy = AvailablePageUserPredicate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                authenticated = try container.decode(Bool.self, forKey: .authenticated)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                anonymous = try container.decode(Bool.self, forKey: .anonymous)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(authenticated, forKey: .authenticated)

            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
        }
    }

    /*
         Model: AvailablePageRoutePredicate
         Used By: Theme
     */

    class AvailablePageRoutePredicate: Codable {
        public var selected: String?

        public var exactUrl: String?

        public var query: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case selected

            case exactUrl = "exact_url"

            case query
        }

        public init(exactUrl: String?, query: [String: Any]?, selected: String?) {
            self.selected = selected

            self.exactUrl = exactUrl

            self.query = query
        }

        public func duplicate() -> AvailablePageRoutePredicate {
            let dict = self.dictionary!
            let copy = AvailablePageRoutePredicate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                selected = try container.decode(String.self, forKey: .selected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exactUrl = try container.decode(String.self, forKey: .exactUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(selected, forKey: .selected)

            try? container.encodeIfPresent(exactUrl, forKey: .exactUrl)

            try? container.encodeIfPresent(query, forKey: .query)
        }
    }

    /*
         Model: AvailablePagePredicate
         Used By: Theme
     */

    class AvailablePagePredicate: Codable {
        public var screen: AvailablePageScreenPredicate?

        public var user: AvailablePageUserPredicate?

        public var route: AvailablePageRoutePredicate?

        public enum CodingKeys: String, CodingKey {
            case screen

            case user

            case route
        }

        public init(route: AvailablePageRoutePredicate?, screen: AvailablePageScreenPredicate?, user: AvailablePageUserPredicate?) {
            self.screen = screen

            self.user = user

            self.route = route
        }

        public func duplicate() -> AvailablePagePredicate {
            let dict = self.dictionary!
            let copy = AvailablePagePredicate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                screen = try container.decode(AvailablePageScreenPredicate.self, forKey: .screen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(AvailablePageUserPredicate.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                route = try container.decode(AvailablePageRoutePredicate.self, forKey: .route)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(screen, forKey: .screen)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(route, forKey: .route)
        }
    }

    /*
         Model: AllAvailablePageSchema
         Used By: Theme
     */

    class AllAvailablePageSchema: Codable {
        public var pages: [AvailablePageSchema]?

        public enum CodingKeys: String, CodingKey {
            case pages
        }

        public init(pages: [AvailablePageSchema]?) {
            self.pages = pages
        }

        public func duplicate() -> AllAvailablePageSchema {
            let dict = self.dictionary!
            let copy = AllAvailablePageSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pages = try container.decode([AvailablePageSchema].self, forKey: .pages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pages, forKey: .pages)
        }
    }

    /*
         Model: PaginationSchema
         Used By: Theme
     */

    class PaginationSchema: Codable {
        public var size: Int?

        public var itemTotal: Int?

        public var hasNext: Bool?

        public var type: String?

        public var current: Int?

        public enum CodingKeys: String, CodingKey {
            case size

            case itemTotal = "item_total"

            case hasNext = "has_next"

            case type

            case current
        }

        public init(current: Int?, hasNext: Bool?, itemTotal: Int?, size: Int?, type: String?) {
            self.size = size

            self.itemTotal = itemTotal

            self.hasNext = hasNext

            self.type = type

            self.current = current
        }

        public func duplicate() -> PaginationSchema {
            let dict = self.dictionary!
            let copy = PaginationSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

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
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(current, forKey: .current)
        }
    }

    /*
         Model: ThemesListingResponseSchema
         Used By: Theme
     */

    class ThemesListingResponseSchema: Codable {
        public var items: [ThemesSchema]?

        public var page: PaginationSchema?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [ThemesSchema]?, page: PaginationSchema?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> ThemesListingResponseSchema {
            let dict = self.dictionary!
            let copy = ThemesListingResponseSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ThemesSchema].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(PaginationSchema.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: AddThemeRequestSchema
         Used By: Theme
     */

    class AddThemeRequestSchema: Codable {
        public var themeId: String?

        public enum CodingKeys: String, CodingKey {
            case themeId = "theme_id"
        }

        public init(themeId: String?) {
            self.themeId = themeId
        }

        public func duplicate() -> AddThemeRequestSchema {
            let dict = self.dictionary!
            let copy = AddThemeRequestSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                themeId = try container.decode(String.self, forKey: .themeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(themeId, forKey: .themeId)
        }
    }

    /*
         Model: UpgradableThemeSchema
         Used By: Theme
     */

    class UpgradableThemeSchema: Codable {
        public var parentTheme: String?

        public var appliedTheme: String?

        public var upgrade: Bool?

        public enum CodingKeys: String, CodingKey {
            case parentTheme = "parent_theme"

            case appliedTheme = "applied_theme"

            case upgrade
        }

        public init(appliedTheme: String?, parentTheme: String?, upgrade: Bool?) {
            self.parentTheme = parentTheme

            self.appliedTheme = appliedTheme

            self.upgrade = upgrade
        }

        public func duplicate() -> UpgradableThemeSchema {
            let dict = self.dictionary!
            let copy = UpgradableThemeSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                parentTheme = try container.decode(String.self, forKey: .parentTheme)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appliedTheme = try container.decode(String.self, forKey: .appliedTheme)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upgrade = try container.decode(Bool.self, forKey: .upgrade)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(parentTheme, forKey: .parentTheme)

            try? container.encodeIfPresent(appliedTheme, forKey: .appliedTheme)

            try? container.encodeIfPresent(upgrade, forKey: .upgrade)
        }
    }

    /*
         Model: FontsSchema
         Used By: Theme
     */

    class FontsSchema: Codable {
        public var items: FontsSchemaItems?

        public var kind: String?

        public enum CodingKeys: String, CodingKey {
            case items

            case kind
        }

        public init(items: FontsSchemaItems?, kind: String?) {
            self.items = items

            self.kind = kind
        }

        public func duplicate() -> FontsSchema {
            let dict = self.dictionary!
            let copy = FontsSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(FontsSchemaItems.self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(kind, forKey: .kind)
        }
    }

    /*
         Model: BlitzkriegApiErrorSchema
         Used By: Theme
     */

    class BlitzkriegApiErrorSchema: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> BlitzkriegApiErrorSchema {
            let dict = self.dictionary!
            let copy = BlitzkriegApiErrorSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: BlitzkriegNotFoundSchema
         Used By: Theme
     */

    class BlitzkriegNotFoundSchema: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> BlitzkriegNotFoundSchema {
            let dict = self.dictionary!
            let copy = BlitzkriegNotFoundSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: BlitzkriegInternalServerErrorSchema
         Used By: Theme
     */

    class BlitzkriegInternalServerErrorSchema: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> BlitzkriegInternalServerErrorSchema {
            let dict = self.dictionary!
            let copy = BlitzkriegInternalServerErrorSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: FontsSchemaItems
         Used By: Theme
     */

    class FontsSchemaItems: Codable {
        public var family: String?

        public var variants: [String]?

        public var subsets: [String]?

        public var version: String?

        public var lastModified: String?

        public var files: FontsSchemaItemsFiles?

        public var category: String?

        public var kind: String?

        public enum CodingKeys: String, CodingKey {
            case family

            case variants

            case subsets

            case version

            case lastModified = "last_modified"

            case files

            case category

            case kind
        }

        public init(category: String?, family: String?, files: FontsSchemaItemsFiles?, kind: String?, lastModified: String?, subsets: [String]?, variants: [String]?, version: String?) {
            self.family = family

            self.variants = variants

            self.subsets = subsets

            self.version = version

            self.lastModified = lastModified

            self.files = files

            self.category = category

            self.kind = kind
        }

        public func duplicate() -> FontsSchemaItems {
            let dict = self.dictionary!
            let copy = FontsSchemaItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                family = try container.decode(String.self, forKey: .family)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([String].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subsets = try container.decode([String].self, forKey: .subsets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastModified = try container.decode(String.self, forKey: .lastModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                files = try container.decode(FontsSchemaItemsFiles.self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(String.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(family, forKey: .family)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(subsets, forKey: .subsets)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(kind, forKey: .kind)
        }
    }

    /*
         Model: FontsSchemaItemsFiles
         Used By: Theme
     */

    class FontsSchemaItemsFiles: Codable {
        public var regular: String?

        public var italic: String?

        public var bold: String?

        public enum CodingKeys: String, CodingKey {
            case regular

            case italic

            case bold
        }

        public init(bold: String?, italic: String?, regular: String?) {
            self.regular = regular

            self.italic = italic

            self.bold = bold
        }

        public func duplicate() -> FontsSchemaItemsFiles {
            let dict = self.dictionary!
            let copy = FontsSchemaItemsFiles(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                regular = try container.decode(String.self, forKey: .regular)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                italic = try container.decode(String.self, forKey: .italic)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bold = try container.decode(String.self, forKey: .bold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(regular, forKey: .regular)

            try? container.encodeIfPresent(italic, forKey: .italic)

            try? container.encodeIfPresent(bold, forKey: .bold)
        }
    }

    /*
         Model: ThemesSchema
         Used By: Theme
     */

    class ThemesSchema: Codable {
        public var application: String?

        public var applied: Bool?

        public var customized: Bool?

        public var published: Bool?

        public var archived: Bool?

        public var createdAt: String?

        public var updatedAt: String?

        public var version: String?

        public var parentThemeVersion: String?

        public var parentTheme: String?

        public var information: Information?

        public var tags: [String]?

        public var src: Src?

        public var assets: AssetsSchema?

        public var availableSections: [availableSectionSchema]?

        public var styles: [String: Any]?

        public var config: Config?

        public var font: Font?

        public var id: String?

        public var v: Int?

        public var colors: Colors?

        public enum CodingKeys: String, CodingKey {
            case application

            case applied

            case customized

            case published

            case archived

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case version

            case parentThemeVersion = "parent_theme_version"

            case parentTheme = "parent_theme"

            case information

            case tags

            case src

            case assets

            case availableSections = "available_sections"

            case styles

            case config

            case font

            case id = "_id"

            case v = "__v"

            case colors
        }

        public init(application: String?, applied: Bool?, archived: Bool?, assets: AssetsSchema?, availableSections: [availableSectionSchema]?, colors: Colors?, config: Config?, createdAt: String?, customized: Bool?, font: Font?, information: Information?, parentTheme: String?, parentThemeVersion: String?, published: Bool?, src: Src?, styles: [String: Any]?, tags: [String]?, updatedAt: String?, version: String?, id: String?, v: Int?) {
            self.application = application

            self.applied = applied

            self.customized = customized

            self.published = published

            self.archived = archived

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.version = version

            self.parentThemeVersion = parentThemeVersion

            self.parentTheme = parentTheme

            self.information = information

            self.tags = tags

            self.src = src

            self.assets = assets

            self.availableSections = availableSections

            self.styles = styles

            self.config = config

            self.font = font

            self.id = id

            self.v = v

            self.colors = colors
        }

        public func duplicate() -> ThemesSchema {
            let dict = self.dictionary!
            let copy = ThemesSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applied = try container.decode(Bool.self, forKey: .applied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customized = try container.decode(Bool.self, forKey: .customized)

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
                archived = try container.decode(Bool.self, forKey: .archived)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentThemeVersion = try container.decode(String.self, forKey: .parentThemeVersion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentTheme = try container.decode(String.self, forKey: .parentTheme)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                information = try container.decode(Information.self, forKey: .information)

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
                src = try container.decode(Src.self, forKey: .src)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                assets = try container.decode(AssetsSchema.self, forKey: .assets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                availableSections = try container.decode([availableSectionSchema].self, forKey: .availableSections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                styles = try container.decode([String: Any].self, forKey: .styles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                config = try container.decode(Config.self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                font = try container.decode(Font.self, forKey: .font)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                colors = try container.decode(Colors.self, forKey: .colors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(applied, forKey: .applied)

            try? container.encodeIfPresent(customized, forKey: .customized)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(archived, forKey: .archived)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(parentThemeVersion, forKey: .parentThemeVersion)

            try? container.encodeIfPresent(parentTheme, forKey: .parentTheme)

            try? container.encodeIfPresent(information, forKey: .information)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(src, forKey: .src)

            try? container.encodeIfPresent(assets, forKey: .assets)

            try? container.encodeIfPresent(availableSections, forKey: .availableSections)

            try? container.encodeIfPresent(styles, forKey: .styles)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(font, forKey: .font)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(colors, forKey: .colors)
        }
    }

    /*
         Model: availableSectionSchema
         Used By: Theme
     */

    class availableSectionSchema: Codable {
        public var blocks: [Blocks]?

        public var name: String?

        public var label: String?

        public var props: [BlocksProps]?

        public enum CodingKeys: String, CodingKey {
            case blocks

            case name

            case label

            case props
        }

        public init(blocks: [Blocks]?, label: String?, name: String?, props: [BlocksProps]?) {
            self.blocks = blocks

            self.name = name

            self.label = label

            self.props = props
        }

        public func duplicate() -> availableSectionSchema {
            let dict = self.dictionary!
            let copy = availableSectionSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                blocks = try container.decode([Blocks].self, forKey: .blocks)

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
                label = try container.decode(String.self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                props = try container.decode([BlocksProps].self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(blocks, forKey: .blocks)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(props, forKey: .props)
        }
    }

    /*
         Model: Information
         Used By: Theme
     */

    class Information: Codable {
        public var images: Images?

        public var features: [String]?

        public var name: String?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case images

            case features

            case name

            case description
        }

        public init(description: String?, features: [String]?, images: Images?, name: String?) {
            self.images = images

            self.features = features

            self.name = name

            self.description = description
        }

        public func duplicate() -> Information {
            let dict = self.dictionary!
            let copy = Information(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                images = try container.decode(Images.self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                features = try container.decode([String].self, forKey: .features)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(features, forKey: .features)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }

    /*
         Model: Images
         Used By: Theme
     */

    class Images: Codable {
        public var desktop: [String]?

        public var android: [String]?

        public var ios: [String]?

        public var thumbnail: [String]?

        public enum CodingKeys: String, CodingKey {
            case desktop

            case android

            case ios

            case thumbnail
        }

        public init(android: [String]?, desktop: [String]?, ios: [String]?, thumbnail: [String]?) {
            self.desktop = desktop

            self.android = android

            self.ios = ios

            self.thumbnail = thumbnail
        }

        public func duplicate() -> Images {
            let dict = self.dictionary!
            let copy = Images(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                desktop = try container.decode([String].self, forKey: .desktop)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                android = try container.decode([String].self, forKey: .android)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ios = try container.decode([String].self, forKey: .ios)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                thumbnail = try container.decode([String].self, forKey: .thumbnail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(desktop, forKey: .desktop)

            try? container.encodeIfPresent(android, forKey: .android)

            try? container.encodeIfPresent(ios, forKey: .ios)

            try? container.encodeIfPresent(thumbnail, forKey: .thumbnail)
        }
    }

    /*
         Model: Src
         Used By: Theme
     */

    class Src: Codable {
        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case link
        }

        public init(link: String?) {
            self.link = link
        }

        public func duplicate() -> Src {
            let dict = self.dictionary!
            let copy = Src(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: AssetsSchema
         Used By: Theme
     */

    class AssetsSchema: Codable {
        public var umdJs: UmdJs?

        public var commonJs: CommonJs?

        public var css: Css?

        public enum CodingKeys: String, CodingKey {
            case umdJs = "umd_js"

            case commonJs = "common_js"

            case css
        }

        public init(commonJs: CommonJs?, css: Css?, umdJs: UmdJs?) {
            self.umdJs = umdJs

            self.commonJs = commonJs

            self.css = css
        }

        public func duplicate() -> AssetsSchema {
            let dict = self.dictionary!
            let copy = AssetsSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                umdJs = try container.decode(UmdJs.self, forKey: .umdJs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                commonJs = try container.decode(CommonJs.self, forKey: .commonJs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                css = try container.decode(Css.self, forKey: .css)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(umdJs, forKey: .umdJs)

            try? container.encodeIfPresent(commonJs, forKey: .commonJs)

            try? container.encodeIfPresent(css, forKey: .css)
        }
    }

    /*
         Model: UmdJs
         Used By: Theme
     */

    class UmdJs: Codable {
        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case link
        }

        public init(link: String?) {
            self.link = link
        }

        public func duplicate() -> UmdJs {
            let dict = self.dictionary!
            let copy = UmdJs(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: CommonJs
         Used By: Theme
     */

    class CommonJs: Codable {
        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case link
        }

        public init(link: String?) {
            self.link = link
        }

        public func duplicate() -> CommonJs {
            let dict = self.dictionary!
            let copy = CommonJs(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: Css
         Used By: Theme
     */

    class Css: Codable {
        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case link
        }

        public init(link: String?) {
            self.link = link
        }

        public func duplicate() -> Css {
            let dict = self.dictionary!
            let copy = Css(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }

    /*
         Model: Sections
         Used By: Theme
     */

    class Sections: Codable {
        public var attributes: String?

        public enum CodingKeys: String, CodingKey {
            case attributes
        }

        public init(attributes: String?) {
            self.attributes = attributes
        }

        public func duplicate() -> Sections {
            let dict = self.dictionary!
            let copy = Sections(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attributes = try container.decode(String.self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)
        }
    }

    /*
         Model: Config
         Used By: Theme
     */

    class Config: Codable {
        public var preset: Preset?

        public var globalSchema: GlobalSchema?

        public var current: String?

        public var list: [ListSchemaItem]?

        public enum CodingKeys: String, CodingKey {
            case preset

            case globalSchema = "global_schema"

            case current

            case list
        }

        public init(current: String?, globalSchema: GlobalSchema?, list: [ListSchemaItem]?, preset: Preset?) {
            self.preset = preset

            self.globalSchema = globalSchema

            self.current = current

            self.list = list
        }

        public func duplicate() -> Config {
            let dict = self.dictionary!
            let copy = Config(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                preset = try container.decode(Preset.self, forKey: .preset)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                globalSchema = try container.decode(GlobalSchema.self, forKey: .globalSchema)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(String.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                list = try container.decode([ListSchemaItem].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(preset, forKey: .preset)

            try? container.encodeIfPresent(globalSchema, forKey: .globalSchema)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(list, forKey: .list)
        }
    }

    /*
         Model: Preset
         Used By: Theme
     */

    class Preset: Codable {
        public var pages: [AvailablePageSchema]?

        public enum CodingKeys: String, CodingKey {
            case pages
        }

        public init(pages: [AvailablePageSchema]?) {
            self.pages = pages
        }

        public func duplicate() -> Preset {
            let dict = self.dictionary!
            let copy = Preset(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pages = try container.decode([AvailablePageSchema].self, forKey: .pages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pages, forKey: .pages)
        }
    }

    /*
         Model: GlobalSchema
         Used By: Theme
     */

    class GlobalSchema: Codable {
        public var props: [GlobalSchemaProps]?

        public enum CodingKeys: String, CodingKey {
            case props
        }

        public init(props: [GlobalSchemaProps]?) {
            self.props = props
        }

        public func duplicate() -> GlobalSchema {
            let dict = self.dictionary!
            let copy = GlobalSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                props = try container.decode([GlobalSchemaProps].self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(props, forKey: .props)
        }
    }

    /*
         Model: ListSchemaItem
         Used By: Theme
     */

    class ListSchemaItem: Codable {
        public var globalConfig: [String: Any]?

        public var page: [ConfigPage]?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case globalConfig = "global_config"

            case page

            case name
        }

        public init(globalConfig: [String: Any]?, name: String?, page: [ConfigPage]?) {
            self.globalConfig = globalConfig

            self.page = page

            self.name = name
        }

        public func duplicate() -> ListSchemaItem {
            let dict = self.dictionary!
            let copy = ListSchemaItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                globalConfig = try container.decode([String: Any].self, forKey: .globalConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode([ConfigPage].self, forKey: .page)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(globalConfig, forKey: .globalConfig)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: Colors
         Used By: Theme
     */

    class Colors: Codable {
        public var bgColor: String?

        public var primaryColor: String?

        public var secondaryColor: String?

        public var accentColor: String?

        public var linkColor: String?

        public var buttonSecondaryColor: String?

        public enum CodingKeys: String, CodingKey {
            case bgColor = "bg_color"

            case primaryColor = "primary_color"

            case secondaryColor = "secondary_color"

            case accentColor = "accent_color"

            case linkColor = "link_color"

            case buttonSecondaryColor = "button_secondary_color"
        }

        public init(accentColor: String?, bgColor: String?, buttonSecondaryColor: String?, linkColor: String?, primaryColor: String?, secondaryColor: String?) {
            self.bgColor = bgColor

            self.primaryColor = primaryColor

            self.secondaryColor = secondaryColor

            self.accentColor = accentColor

            self.linkColor = linkColor

            self.buttonSecondaryColor = buttonSecondaryColor
        }

        public func duplicate() -> Colors {
            let dict = self.dictionary!
            let copy = Colors(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bgColor = try container.decode(String.self, forKey: .bgColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primaryColor = try container.decode(String.self, forKey: .primaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secondaryColor = try container.decode(String.self, forKey: .secondaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                accentColor = try container.decode(String.self, forKey: .accentColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                linkColor = try container.decode(String.self, forKey: .linkColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buttonSecondaryColor = try container.decode(String.self, forKey: .buttonSecondaryColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bgColor, forKey: .bgColor)

            try? container.encodeIfPresent(primaryColor, forKey: .primaryColor)

            try? container.encodeIfPresent(secondaryColor, forKey: .secondaryColor)

            try? container.encodeIfPresent(accentColor, forKey: .accentColor)

            try? container.encodeIfPresent(linkColor, forKey: .linkColor)

            try? container.encodeIfPresent(buttonSecondaryColor, forKey: .buttonSecondaryColor)
        }
    }

    /*
         Model: Custom
         Used By: Theme
     */

    class Custom: Codable {
        public var props: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case props
        }

        public init(props: [String: Any]?) {
            self.props = props
        }

        public func duplicate() -> Custom {
            let dict = self.dictionary!
            let copy = Custom(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                props = try container.decode([String: Any].self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(props, forKey: .props)
        }
    }

    /*
         Model: ConfigPage
         Used By: Theme
     */

    class ConfigPage: Codable {
        public var settings: [String: Any]?

        public var page: String?

        public enum CodingKeys: String, CodingKey {
            case settings

            case page
        }

        public init(page: String?, settings: [String: Any]?) {
            self.settings = settings

            self.page = page
        }

        public func duplicate() -> ConfigPage {
            let dict = self.dictionary!
            let copy = ConfigPage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                settings = try container.decode([String: Any].self, forKey: .settings)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(String.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(settings, forKey: .settings)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: Font
         Used By: Theme
     */

    class Font: Codable {
        public var family: String?

        public var variants: Variants?

        public enum CodingKeys: String, CodingKey {
            case family

            case variants
        }

        public init(family: String?, variants: Variants?) {
            self.family = family

            self.variants = variants
        }

        public func duplicate() -> Font {
            let dict = self.dictionary!
            let copy = Font(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                family = try container.decode(String.self, forKey: .family)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode(Variants.self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(family, forKey: .family)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }

    /*
         Model: Variants
         Used By: Theme
     */

    class Variants: Codable {
        public var medium: Medium?

        public var semiBold: SemiBold?

        public var bold: Bold?

        public var light: Light?

        public var regular: Regular?

        public enum CodingKeys: String, CodingKey {
            case medium

            case semiBold = "semi_bold"

            case bold

            case light

            case regular
        }

        public init(bold: Bold?, light: Light?, medium: Medium?, regular: Regular?, semiBold: SemiBold?) {
            self.medium = medium

            self.semiBold = semiBold

            self.bold = bold

            self.light = light

            self.regular = regular
        }

        public func duplicate() -> Variants {
            let dict = self.dictionary!
            let copy = Variants(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                medium = try container.decode(Medium.self, forKey: .medium)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                semiBold = try container.decode(SemiBold.self, forKey: .semiBold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bold = try container.decode(Bold.self, forKey: .bold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                light = try container.decode(Light.self, forKey: .light)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                regular = try container.decode(Regular.self, forKey: .regular)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(medium, forKey: .medium)

            try? container.encodeIfPresent(semiBold, forKey: .semiBold)

            try? container.encodeIfPresent(bold, forKey: .bold)

            try? container.encodeIfPresent(light, forKey: .light)

            try? container.encodeIfPresent(regular, forKey: .regular)
        }
    }

    /*
         Model: Medium
         Used By: Theme
     */

    class Medium: Codable {
        public var name: String?

        public var file: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case file
        }

        public init(file: String?, name: String?) {
            self.name = name

            self.file = file
        }

        public func duplicate() -> Medium {
            let dict = self.dictionary!
            let copy = Medium(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                file = try container.decode(String.self, forKey: .file)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(file, forKey: .file)
        }
    }

    /*
         Model: SemiBold
         Used By: Theme
     */

    class SemiBold: Codable {
        public var name: String?

        public var file: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case file
        }

        public init(file: String?, name: String?) {
            self.name = name

            self.file = file
        }

        public func duplicate() -> SemiBold {
            let dict = self.dictionary!
            let copy = SemiBold(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                file = try container.decode(String.self, forKey: .file)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(file, forKey: .file)
        }
    }

    /*
         Model: Bold
         Used By: Theme
     */

    class Bold: Codable {
        public var name: String?

        public var file: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case file
        }

        public init(file: String?, name: String?) {
            self.name = name

            self.file = file
        }

        public func duplicate() -> Bold {
            let dict = self.dictionary!
            let copy = Bold(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                file = try container.decode(String.self, forKey: .file)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(file, forKey: .file)
        }
    }

    /*
         Model: Light
         Used By: Theme
     */

    class Light: Codable {
        public var name: String?

        public var file: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case file
        }

        public init(file: String?, name: String?) {
            self.name = name

            self.file = file
        }

        public func duplicate() -> Light {
            let dict = self.dictionary!
            let copy = Light(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                file = try container.decode(String.self, forKey: .file)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(file, forKey: .file)
        }
    }

    /*
         Model: Regular
         Used By: Theme
     */

    class Regular: Codable {
        public var name: String?

        public var file: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case file
        }

        public init(file: String?, name: String?) {
            self.name = name

            self.file = file
        }

        public func duplicate() -> Regular {
            let dict = self.dictionary!
            let copy = Regular(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                file = try container.decode(String.self, forKey: .file)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(file, forKey: .file)
        }
    }

    /*
         Model: Blocks
         Used By: Theme
     */

    class Blocks: Codable {
        public var type: String?

        public var name: String?

        public var props: [BlocksProps]?

        public enum CodingKeys: String, CodingKey {
            case type

            case name

            case props
        }

        public init(name: String?, props: [BlocksProps]?, type: String?) {
            self.type = type

            self.name = name

            self.props = props
        }

        public func duplicate() -> Blocks {
            let dict = self.dictionary!
            let copy = Blocks(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

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
                props = try container.decode([BlocksProps].self, forKey: .props)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(props, forKey: .props)
        }
    }

    /*
         Model: GlobalSchemaProps
         Used By: Theme
     */

    class GlobalSchemaProps: Codable {
        public var id: String?

        public var label: String?

        public var type: String?

        public var category: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case label

            case type

            case category
        }

        public init(category: String?, id: String?, label: String?, type: String?) {
            self.id = id

            self.label = label

            self.type = type

            self.category = category
        }

        public func duplicate() -> GlobalSchemaProps {
            let dict = self.dictionary!
            let copy = GlobalSchemaProps(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                label = try container.decode(String.self, forKey: .label)

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
                category = try container.decode(String.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }

    /*
         Model: BlocksProps
         Used By: Theme
     */

    class BlocksProps: Codable {
        public var id: String?

        public var label: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case label

            case type
        }

        public init(id: String?, label: String?, type: String?) {
            self.id = id

            self.label = label

            self.type = type
        }

        public func duplicate() -> BlocksProps {
            let dict = self.dictionary!
            let copy = BlocksProps(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                label = try container.decode(String.self, forKey: .label)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
