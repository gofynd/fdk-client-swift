

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Zone
         Used By: Serviceability
     */

    class Zone: Codable {
        public var assignmentPreference: String

        public var type: String

        public var tags: [String]

        public var slug: String

        public var name: String

        public var isActive: Bool

        public var zoneId: String

        public var storeIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case assignmentPreference = "assignment_preference"

            case type

            case tags

            case slug

            case name

            case isActive = "is_active"

            case zoneId = "zone_id"

            case storeIds = "store_ids"
        }

        public init(assignmentPreference: String, isActive: Bool, name: String, slug: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.assignmentPreference = assignmentPreference

            self.type = type

            self.tags = tags

            self.slug = slug

            self.name = name

            self.isActive = isActive

            self.zoneId = zoneId

            self.storeIds = storeIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)

            type = try container.decode(String.self, forKey: .type)

            tags = try container.decode([String].self, forKey: .tags)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storeIds = try container.decode([Int].self, forKey: .storeIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
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

        public var tags: [String]

        public var slug: String

        public var name: String

        public var isActive: Bool

        public var zoneId: String

        public var storeIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case assignmentPreference = "assignment_preference"

            case type

            case tags

            case slug

            case name

            case isActive = "is_active"

            case zoneId = "zone_id"

            case storeIds = "store_ids"
        }

        public init(assignmentPreference: String, isActive: Bool, name: String, slug: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.assignmentPreference = assignmentPreference

            self.type = type

            self.tags = tags

            self.slug = slug

            self.name = name

            self.isActive = isActive

            self.zoneId = zoneId

            self.storeIds = storeIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)

            type = try container.decode(String.self, forKey: .type)

            tags = try container.decode([String].self, forKey: .tags)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storeIds = try container.decode([Int].self, forKey: .storeIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }
}
