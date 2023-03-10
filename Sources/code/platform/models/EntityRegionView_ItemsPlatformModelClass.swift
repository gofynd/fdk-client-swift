

import Foundation
public extension PlatformClient {
    /*
         Model: EntityRegionView_Items
         Used By: Serviceability
     */

    class EntityRegionView_Items: Codable {
        public var name: String

        public var subType: String

        public var uid: String

        public enum CodingKeys: String, CodingKey {
            case name

            case subType = "sub_type"

            case uid
        }

        public init(name: String, subType: String, uid: String) {
            self.name = name

            self.subType = subType

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            subType = try container.decode(String.self, forKey: .subType)

            uid = try container.decode(String.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
