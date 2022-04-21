

import Foundation
public extension PlatformClient {
    /*
         Model: FAQCategorySchema
         Used By: Content
     */

    class FAQCategorySchema: Codable {
        public var index: Int?

        public var title: String?

        public var description: String?

        public var children: [ChildrenSchema]?

        public var id: String?

        public var slug: String?

        public var application: String?

        public var iconUrl: String?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case index

            case title

            case description

            case children

            case id = "_id"

            case slug

            case application

            case iconUrl = "icon_url"

            case customJson = "_custom_json"
        }

        public init(application: String? = nil, children: [ChildrenSchema]? = nil, description: String? = nil, iconUrl: String? = nil, index: Int? = nil, slug: String? = nil, title: String? = nil, customJson: [String: Any]? = nil, id: String? = nil) {
            self.index = index

            self.title = title

            self.description = description

            self.children = children

            self.id = id

            self.slug = slug

            self.application = application

            self.iconUrl = iconUrl

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                index = try container.decode(Int.self, forKey: .index)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
                children = try container.decode([ChildrenSchema].self, forKey: .children)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                iconUrl = try container.decode(String.self, forKey: .iconUrl)

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

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(children, forKey: .children)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(iconUrl, forKey: .iconUrl)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
