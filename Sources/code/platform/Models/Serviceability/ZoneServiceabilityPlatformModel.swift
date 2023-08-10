

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: Zone
         Used By: Serviceability
     */

    class Zone: Codable {
        public var zoneId: String

        public var type: String

        public var name: String

        public var tags: [String]

        public var slug: String

        public var isActive: Bool

        public var storeIds: [Int]

        public var assignmentPreference: String

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case type

            case name

            case tags

            case slug

            case isActive = "is_active"

            case storeIds = "store_ids"

            case assignmentPreference = "assignment_preference"
        }

        public init(assignmentPreference: String, isActive: Bool, name: String, slug: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.zoneId = zoneId

            self.type = type

            self.name = name

            self.tags = tags

            self.slug = slug

            self.isActive = isActive

            self.storeIds = storeIds

            self.assignmentPreference = assignmentPreference
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            type = try container.decode(String.self, forKey: .type)

            name = try container.decode(String.self, forKey: .name)

            tags = try container.decode([String].self, forKey: .tags)

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)
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

        public var type: String

        public var name: String

        public var tags: [String]

        public var slug: String

        public var isActive: Bool

        public var storeIds: [Int]

        public var assignmentPreference: String

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case type

            case name

            case tags

            case slug

            case isActive = "is_active"

            case storeIds = "store_ids"

            case assignmentPreference = "assignment_preference"
        }

        public init(assignmentPreference: String, isActive: Bool, name: String, slug: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.zoneId = zoneId

            self.type = type

            self.name = name

            self.tags = tags

            self.slug = slug

            self.isActive = isActive

            self.storeIds = storeIds

            self.assignmentPreference = assignmentPreference
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            type = try container.decode(String.self, forKey: .type)

            name = try container.decode(String.self, forKey: .name)

            tags = try container.decode([String].self, forKey: .tags)

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)
        }
    }
}
