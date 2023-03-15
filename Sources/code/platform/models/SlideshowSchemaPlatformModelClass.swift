

import Foundation
public extension PlatformClient {
    /*
         Model: SlideshowSchema
         Used By: Content
     */

    class SlideshowSchema: Codable {
        public var id: String?

        public var slug: String?

        public var dateMeta: DateMeta?

        public var application: String?

        public var platform: String?

        public var configuration: ConfigurationSchema?

        public var media: [SlideshowMedia]?

        public var active: Bool?

        public var archived: Bool?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case slug

            case dateMeta = "date_meta"

            case application

            case platform

            case configuration

            case media

            case active

            case archived

            case customJson = "_custom_json"
        }

        public init(active: Bool? = nil, application: String? = nil, archived: Bool? = nil, configuration: ConfigurationSchema? = nil, dateMeta: DateMeta? = nil, media: [SlideshowMedia]? = nil, platform: String? = nil, slug: String? = nil, customJson: [String: Any]? = nil, id: String? = nil) {
            self.id = id

            self.slug = slug

            self.dateMeta = dateMeta

            self.application = application

            self.platform = platform

            self.configuration = configuration

            self.media = media

            self.active = active

            self.archived = archived

            self.customJson = customJson
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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                configuration = try container.decode(ConfigurationSchema.self, forKey: .configuration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([SlideshowMedia].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(archived, forKey: .archived)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
