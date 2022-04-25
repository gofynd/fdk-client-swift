

import Foundation
public extension PlatformClient {
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

        public init(application: String? = nil, applied: Bool? = nil, archived: Bool? = nil, assets: AssetsSchema? = nil, availableSections: [availableSectionSchema]? = nil, colors: Colors? = nil, config: Config? = nil, createdAt: String? = nil, customized: Bool? = nil, font: Font? = nil, information: Information? = nil, parentTheme: String? = nil, parentThemeVersion: String? = nil, published: Bool? = nil, src: Src? = nil, styles: [String: Any]? = nil, tags: [String]? = nil, updatedAt: String? = nil, version: String? = nil, id: String? = nil, v: Int? = nil) {
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
}
