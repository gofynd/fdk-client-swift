

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentUpdate
         Used By: Catalog
     */

    class DepartmentUpdate: Codable {
        public var synonyms: [String]?

        public var cls: String?

        public var slug: String?

        public var tags: [String]?

        public var priorityOrder: Int

        public var customJson: [String: Any]?

        public var logo: String

        public var platform: String?

        public var name: String

        public var isActive: Bool?

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case synonyms

            case cls = "_cls"

            case slug

            case tags

            case priorityOrder = "priority_order"

            case customJson = "_custom_json"

            case logo

            case platform

            case name

            case isActive = "is_active"

            case uid
        }

        public init(isActive: Bool? = nil, logo: String, name: String, platform: String? = nil, priorityOrder: Int, slug: String? = nil, synonyms: [String]? = nil, tags: [String]? = nil, uid: Int, cls: String? = nil, customJson: [String: Any]? = nil) {
            self.synonyms = synonyms

            self.cls = cls

            self.slug = slug

            self.tags = tags

            self.priorityOrder = priorityOrder

            self.customJson = customJson

            self.logo = logo

            self.platform = platform

            self.name = name

            self.isActive = isActive

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

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
        public var synonyms: [String]?

        public var cls: String?

        public var slug: String?

        public var tags: [String]?

        public var priorityOrder: Int

        public var customJson: [String: Any]?

        public var logo: String

        public var platform: String?

        public var name: String

        public var isActive: Bool?

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case synonyms

            case cls = "_cls"

            case slug

            case tags

            case priorityOrder = "priority_order"

            case customJson = "_custom_json"

            case logo

            case platform

            case name

            case isActive = "is_active"

            case uid
        }

        public init(isActive: Bool? = nil, logo: String, name: String, platform: String? = nil, priorityOrder: Int, slug: String? = nil, synonyms: [String]? = nil, tags: [String]? = nil, uid: Int, cls: String? = nil, customJson: [String: Any]? = nil) {
            self.synonyms = synonyms

            self.cls = cls

            self.slug = slug

            self.tags = tags

            self.priorityOrder = priorityOrder

            self.customJson = customJson

            self.logo = logo

            self.platform = platform

            self.name = name

            self.isActive = isActive

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(cls, forKey: .cls)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
