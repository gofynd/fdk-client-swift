

import Foundation
public extension PlatformClient {
    /*
         Model: EntityRegionView_Items
         Used By: Serviceability
     */

    class EntityRegionView_Items: Codable {
        public var uid: String

        public var name: String

        public var subType: String

        public enum CodingKeys: String, CodingKey {
            case uid

            case name

            case subType = "sub_type"
        }

        public init(name: String, subType: String, uid: String) {
            self.uid = uid

            self.name = name

            self.subType = subType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            name = try container.decode(String.self, forKey: .name)

            subType = try container.decode(String.self, forKey: .subType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(subType, forKey: .subType)
        }
    }
}
