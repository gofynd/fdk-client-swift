

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: ApplyThemeResponseV2
         Used By: Theme
     */
    class ApplyThemeResponseV2: Codable {
        public var font: FontV2?

        public var config: ConfigV2?

        public var applied: Bool?

        public var isPrivate: Bool?

        public var tags: [String]?

        public var id: String?

        public var applicationId: String?

        public var marketplaceThemeId: String?

        public var meta: MetaV2?

        public var name: String?

        public var templateThemeId: String?

        public var version: String?

        public var styles: [String: Any]?

        public var createdAt: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case font

            case config

            case applied

            case isPrivate = "is_private"

            case tags

            case id = "_id"

            case applicationId = "application_id"

            case marketplaceThemeId = "marketplace_theme_id"

            case meta

            case name

            case templateThemeId = "template_theme_id"

            case version

            case styles

            case createdAt = "created_at"

            case updatedAt = "updated_at"
        }

        public init(applicationId: String? = nil, applied: Bool? = nil, config: ConfigV2? = nil, createdAt: String? = nil, font: FontV2? = nil, isPrivate: Bool? = nil, marketplaceThemeId: String? = nil, meta: MetaV2? = nil, name: String? = nil, styles: [String: Any]? = nil, tags: [String]? = nil, templateThemeId: String? = nil, updatedAt: String? = nil, version: String? = nil, id: String? = nil) {
            self.font = font

            self.config = config

            self.applied = applied

            self.isPrivate = isPrivate

            self.tags = tags

            self.id = id

            self.applicationId = applicationId

            self.marketplaceThemeId = marketplaceThemeId

            self.meta = meta

            self.name = name

            self.templateThemeId = templateThemeId

            self.version = version

            self.styles = styles

            self.createdAt = createdAt

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                font = try container.decode(FontV2.self, forKey: .font)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                config = try container.decode(ConfigV2.self, forKey: .config)

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
                isPrivate = try container.decode(Bool.self, forKey: .isPrivate)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceThemeId = try container.decode(String.self, forKey: .marketplaceThemeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(MetaV2.self, forKey: .meta)

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
                templateThemeId = try container.decode(String.self, forKey: .templateThemeId)

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
                styles = try container.decode([String: Any].self, forKey: .styles)

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

            try? container.encodeIfPresent(font, forKey: .font)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(applied, forKey: .applied)

            try? container.encodeIfPresent(isPrivate, forKey: .isPrivate)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(marketplaceThemeId, forKey: .marketplaceThemeId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(templateThemeId, forKey: .templateThemeId)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(styles, forKey: .styles)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
