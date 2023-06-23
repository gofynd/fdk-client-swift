

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Zone
         Used By: Serviceability
     */

    class Zone: Codable {
        public var type: String

        public var name: String

        public var zoneId: String

        public var slug: String

        public var storeIds: [Int]

        public var assignmentPreference: String

        public var isActive: Bool

        public var tags: [String]

        public enum CodingKeys: String, CodingKey {
            case type

            case name

            case zoneId = "zone_id"

            case slug

            case storeIds = "store_ids"

            case assignmentPreference = "assignment_preference"

            case isActive = "is_active"

            case tags
        }

        public init(assignmentPreference: String, isActive: Bool, name: String, slug: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.type = type

            self.name = name

            self.zoneId = zoneId

            self.slug = slug

            self.storeIds = storeIds

            self.assignmentPreference = assignmentPreference

            self.isActive = isActive

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            slug = try container.decode(String.self, forKey: .slug)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            tags = try container.decode([String].self, forKey: .tags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: Zone
         Used By: Serviceability
     */

    class Zone: Codable {
        public var type: String

        public var name: String

        public var zoneId: String

        public var slug: String

        public var storeIds: [Int]

        public var assignmentPreference: String

        public var isActive: Bool

        public var tags: [String]

        public enum CodingKeys: String, CodingKey {
            case type

            case name

            case zoneId = "zone_id"

            case slug

            case storeIds = "store_ids"

            case assignmentPreference = "assignment_preference"

            case isActive = "is_active"

            case tags
        }

        public init(assignmentPreference: String, isActive: Bool, name: String, slug: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.type = type

            self.name = name

            self.zoneId = zoneId

            self.slug = slug

            self.storeIds = storeIds

            self.assignmentPreference = assignmentPreference

            self.isActive = isActive

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            slug = try container.decode(String.self, forKey: .slug)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            tags = try container.decode([String].self, forKey: .tags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}
