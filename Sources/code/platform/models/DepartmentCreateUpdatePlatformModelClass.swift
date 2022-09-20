

import Foundation
public extension PlatformClient {
    /*
         Model: DepartmentCreateUpdate
         Used By: Catalog
     */

    class DepartmentCreateUpdate: Codable {
        public var slug: String?

        public var synonyms: [String]?

        public var cls: String?

        public var tags: [String]?

        public var priorityOrder: Int

        public var customJson: [String: Any]?

        public var logo: String

        public var uid: Int?

        public var platforms: [String: Any]?

        public var isActive: Bool?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case slug

            case synonyms

            case cls = "_cls"

            case tags

            case priorityOrder = "priority_order"

            case customJson = "_custom_json"

            case logo

            case uid

            case platforms

            case isActive = "is_active"

            case name
        }

        public init(isActive: Bool? = nil, logo: String, name: String, platforms: [String: Any]? = nil, priorityOrder: Int, slug: String? = nil, synonyms: [String]? = nil, tags: [String]? = nil, uid: Int? = nil, cls: String? = nil, customJson: [String: Any]? = nil) {
            self.slug = slug

            self.synonyms = synonyms

            self.cls = cls

            self.tags = tags

            self.priorityOrder = priorityOrder

            self.customJson = customJson

            self.logo = logo

            self.uid = uid

            self.platforms = platforms

            self.isActive = isActive

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cls = try container.decode(String.self, forKey: .cls)

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

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logo = try container.decode(String.self, forKey: .logo)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platforms = try container.decode([String: Any].self, forKey: .platforms)

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

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
