

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: ThemeSchema
         Used By: Theme
     */

    class ThemeSchema: Codable {
        public var id: String?

        public var name: String?

        public var marketplaceThemeId: MarketplaceThemeId?

        public var companyId: Int?

        public var meta: ThemeMeta?

        public var createdAt: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case name

            case marketplaceThemeId = "marketplace_theme_id"

            case companyId = "company_id"

            case meta

            case createdAt = "created_at"

            case updatedAt = "updated_at"
        }

        public init(companyId: Int? = nil, createdAt: String? = nil, marketplaceThemeId: MarketplaceThemeId? = nil, meta: ThemeMeta? = nil, name: String? = nil, updatedAt: String? = nil, id: String? = nil) {
            self.id = id

            self.name = name

            self.marketplaceThemeId = marketplaceThemeId

            self.companyId = companyId

            self.meta = meta

            self.createdAt = createdAt

            self.updatedAt = updatedAt
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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceThemeId = try container.decode(MarketplaceThemeId.self, forKey: .marketplaceThemeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ThemeMeta.self, forKey: .meta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(marketplaceThemeId, forKey: .marketplaceThemeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: ThemeSchema
         Used By: Theme
     */

    class ThemeSchema: Codable {
        public var id: String?

        public var name: String?

        public var marketplaceThemeId: MarketplaceThemeId?

        public var companyId: Int?

        public var meta: ThemeMeta?

        public var createdAt: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case name

            case marketplaceThemeId = "marketplace_theme_id"

            case companyId = "company_id"

            case meta

            case createdAt = "created_at"

            case updatedAt = "updated_at"
        }

        public init(companyId: Int? = nil, createdAt: String? = nil, marketplaceThemeId: MarketplaceThemeId? = nil, meta: ThemeMeta? = nil, name: String? = nil, updatedAt: String? = nil, id: String? = nil) {
            self.id = id

            self.name = name

            self.marketplaceThemeId = marketplaceThemeId

            self.companyId = companyId

            self.meta = meta

            self.createdAt = createdAt

            self.updatedAt = updatedAt
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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceThemeId = try container.decode(MarketplaceThemeId.self, forKey: .marketplaceThemeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ThemeMeta.self, forKey: .meta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(marketplaceThemeId, forKey: .marketplaceThemeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
