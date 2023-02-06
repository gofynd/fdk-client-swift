

import Foundation
public extension PlatformClient {
    /*
         Model: GetZonesForZoneFromPincode
         Used By: Serviceability
     */

    class GetZonesForZoneFromPincode: Codable {
        public var assignmentPreference: String

        public var zoneId: String

        public var storeIds: [Int]

        public var tags: [String]

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case assignmentPreference = "assignment_preference"

            case zoneId = "zone_id"

            case storeIds = "store_ids"

            case tags

            case type
        }

        public init(assignmentPreference: String, storeIds: [Int], tags: [String], type: String, zoneId: String) {
            self.assignmentPreference = assignmentPreference

            self.zoneId = zoneId

            self.storeIds = storeIds

            self.tags = tags

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            assignmentPreference = try container.decode(String.self, forKey: .assignmentPreference)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            tags = try container.decode([String].self, forKey: .tags)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assignmentPreference, forKey: .assignmentPreference)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
