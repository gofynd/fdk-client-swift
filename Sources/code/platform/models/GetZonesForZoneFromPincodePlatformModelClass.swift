

import Foundation
public extension PlatformClient {
    /*
         Model: GetZonesForZoneFromPincode
         Used By: Serviceability
     */

    class GetZonesForZoneFromPincode: Codable {
        public var zoneId: String

        public var assignmentPreference: String

        public var storeIds: [Int]

        public var type: String

        public var tags: [String]

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case assignmentPreference = "assignment_preference"

            case storeIds = "store_ids"

            case type

            case tags
        }

        public init(assignmentPreference: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.zoneId = zoneId

            self.assignmentPreference = assignmentPreference

            self.storeIds = storeIds

            self.type = type

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            type = try container.decode(String.self, forKey: .type)

            tags = try container.decode([String].self, forKey: .tags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}
