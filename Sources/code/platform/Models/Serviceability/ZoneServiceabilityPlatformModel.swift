

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Zone
         Used By: Serviceability
     */

    class Zone: Codable {
        public var zoneId: String

        public var assignmentPreference: String

        public var tags: [String]

        public var name: String

        public var storeIds: [Int]

        public var type: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case assignmentPreference = "assignment_preference"

            case tags

            case name

            case storeIds = "store_ids"

            case type

            case slug
        }

        public init(assignmentPreference: String, name: String, slug: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.zoneId = zoneId

            self.assignmentPreference = assignmentPreference

            self.tags = tags

            self.name = name

            self.storeIds = storeIds

            self.type = type

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)

            tags = try container.decode([String].self, forKey: .tags)

            name = try container.decode(String.self, forKey: .name)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            type = try container.decode(String.self, forKey: .type)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: Zone
         Used By: Serviceability
     */

    class Zone: Codable {
        public var zoneId: String

        public var assignmentPreference: String

        public var tags: [String]

        public var name: String

        public var storeIds: [Int]

        public var type: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case assignmentPreference = "assignment_preference"

            case tags

            case name

            case storeIds = "store_ids"

            case type

            case slug
        }

        public init(assignmentPreference: String, name: String, slug: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.zoneId = zoneId

            self.assignmentPreference = assignmentPreference

            self.tags = tags

            self.name = name

            self.storeIds = storeIds

            self.type = type

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)

            tags = try container.decode([String].self, forKey: .tags)

            name = try container.decode(String.self, forKey: .name)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            type = try container.decode(String.self, forKey: .type)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
