

import Foundation
public extension PlatformClient {
    /*
         Model: EntityRegionViewItems
         Used By: Serviceability
     */

    class EntityRegionViewItems: Codable {
        public var uid: String

        public var subType: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case uid

            case subType = "sub_type"

            case name
        }

        public init(name: String, subType: String, uid: String) {
            self.uid = uid

            self.subType = subType

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            subType = try container.decode(String.self, forKey: .subType)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
