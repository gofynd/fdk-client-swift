

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Zone
         Used By: Serviceability
     */

    class Zone: Codable {
        public var assignmentPreference: String

        public var type: String

        public var name: String

        public var zoneId: String

        public var storeIds: [Int]

        public var isActive: Bool

        public var slug: String

        public var tags: [String]

        public enum CodingKeys: String, CodingKey {
            case assignmentPreference = "assignment_preference"

            case type

            case name

            case zoneId = "zone_id"

            case storeIds = "store_ids"

            case isActive = "is_active"

            case slug

            case tags
        }

        public init(assignmentPreference: String, isActive: Bool, name: String, slug: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.assignmentPreference = assignmentPreference

            self.type = type

            self.name = name

            self.zoneId = zoneId

            self.storeIds = storeIds

            self.isActive = isActive

            self.slug = slug

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)

            type = try container.decode(String.self, forKey: .type)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            slug = try container.decode(String.self, forKey: .slug)

            tags = try container.decode([String].self, forKey: .tags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(slug, forKey: .slug)

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
        public var assignmentPreference: String

        public var type: String

        public var name: String

        public var zoneId: String

        public var storeIds: [Int]

        public var isActive: Bool

        public var slug: String

        public var tags: [String]

        public enum CodingKeys: String, CodingKey {
            case assignmentPreference = "assignment_preference"

            case type

            case name

            case zoneId = "zone_id"

            case storeIds = "store_ids"

            case isActive = "is_active"

            case slug

            case tags
        }

        public init(assignmentPreference: String, isActive: Bool, name: String, slug: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.assignmentPreference = assignmentPreference

            self.type = type

            self.name = name

            self.zoneId = zoneId

            self.storeIds = storeIds

            self.isActive = isActive

            self.slug = slug

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)

            type = try container.decode(String.self, forKey: .type)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            slug = try container.decode(String.self, forKey: .slug)

            tags = try container.decode([String].self, forKey: .tags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}
