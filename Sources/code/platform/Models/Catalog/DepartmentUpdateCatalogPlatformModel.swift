

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentUpdate
         Used By: Catalog
     */

    class DepartmentUpdate: Codable {
        public var isActive: Bool?

        public var name: String

        public var priorityOrder: Int

        public var cls: String?

        public var synonyms: [String]?

        public var logo: String

        public var tags: [String]?

        public var customJson: [String: Any]?

        public var slug: String?

        public var platform: String?

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case name

            case priorityOrder = "priority_order"

            case cls = "_cls"

            case synonyms

            case logo

            case tags

            case customJson = "_custom_json"

            case slug

            case platform

            case uid
        }

        public init(isActive: Bool? = nil, logo: String, name: String, platform: String? = nil, priorityOrder: Int, slug: String? = nil, synonyms: [String]? = nil, tags: [String]? = nil, uid: Int, cls: String? = nil, customJson: [String: Any]? = nil) {
            self.isActive = isActive

            self.name = name

            self.priorityOrder = priorityOrder

            self.cls = cls

            self.synonyms = synonyms

            self.logo = logo

            self.tags = tags

            self.customJson = customJson

            self.slug = slug

            self.platform = platform

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            do {
                cls = try container.decode(String.self, forKey: .cls)

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

            logo = try container.decode(String.self, forKey: .logo)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                slug = try container.decode(String.self, forKey: .slug)

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

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentUpdate
         Used By: Catalog
     */

    class DepartmentUpdate: Codable {
        public var isActive: Bool?

        public var name: String

        public var priorityOrder: Int

        public var cls: String?

        public var synonyms: [String]?

        public var logo: String

        public var tags: [String]?

        public var customJson: [String: Any]?

        public var slug: String?

        public var platform: String?

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case name

            case priorityOrder = "priority_order"

            case cls = "_cls"

            case synonyms

            case logo

            case tags

            case customJson = "_custom_json"

            case slug

            case platform

            case uid
        }

        public init(isActive: Bool? = nil, logo: String, name: String, platform: String? = nil, priorityOrder: Int, slug: String? = nil, synonyms: [String]? = nil, tags: [String]? = nil, uid: Int, cls: String? = nil, customJson: [String: Any]? = nil) {
            self.isActive = isActive

            self.name = name

            self.priorityOrder = priorityOrder

            self.cls = cls

            self.synonyms = synonyms

            self.logo = logo

            self.tags = tags

            self.customJson = customJson

            self.slug = slug

            self.platform = platform

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            do {
                cls = try container.decode(String.self, forKey: .cls)

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

            logo = try container.decode(String.self, forKey: .logo)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                slug = try container.decode(String.self, forKey: .slug)

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

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
