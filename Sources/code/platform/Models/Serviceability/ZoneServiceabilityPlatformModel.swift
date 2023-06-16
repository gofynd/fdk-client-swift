

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Zone
         Used By: Serviceability
     */

    class Zone: Codable {
        public var assignmentPreference: String

        public var type: String

        public var slug: String

        public var isActive: Bool

        public var tags: [String]

        public var storeIds: [Int]

        public var name: String

        public var zoneId: String

        public enum CodingKeys: String, CodingKey {
            case assignmentPreference = "assignment_preference"

            case type

            case slug

            case isActive = "is_active"

            case tags

            case storeIds = "store_ids"

            case name

            case zoneId = "zone_id"
        }

        public init(assignmentPreference: String, isActive: Bool, name: String, slug: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.assignmentPreference = assignmentPreference

            self.type = type

            self.slug = slug

            self.isActive = isActive

            self.tags = tags

            self.storeIds = storeIds

            self.name = name

            self.zoneId = zoneId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)

            type = try container.decode(String.self, forKey: .type)

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            tags = try container.decode([String].self, forKey: .tags)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
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

        public var slug: String

        public var isActive: Bool

        public var tags: [String]

        public var storeIds: [Int]

        public var name: String

        public var zoneId: String

        public enum CodingKeys: String, CodingKey {
            case assignmentPreference = "assignment_preference"

            case type

            case slug

            case isActive = "is_active"

            case tags

            case storeIds = "store_ids"

            case name

            case zoneId = "zone_id"
        }

        public init(assignmentPreference: String, isActive: Bool, name: String, slug: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.assignmentPreference = assignmentPreference

            self.type = type

            self.slug = slug

            self.isActive = isActive

            self.tags = tags

            self.storeIds = storeIds

            self.name = name

            self.zoneId = zoneId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)

            type = try container.decode(String.self, forKey: .type)

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            tags = try container.decode([String].self, forKey: .tags)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            name = try container.decode(String.self, forKey: .name)

            zoneId = try container.decode(String.self, forKey: .zoneId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
        }
    }
}
