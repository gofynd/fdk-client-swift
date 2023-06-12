

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: EntityRegionView_Items
         Used By: Serviceability
     */

    class EntityRegionView_Items: Codable {
        public var subType: String

        public var name: String

        public var uid: String

        public enum CodingKeys: String, CodingKey {
            case subType = "sub_type"

            case name

            case uid
        }

        public init(name: String, subType: String, uid: String) {
            self.subType = subType

            self.name = name

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            subType = try container.decode(String.self, forKey: .subType)

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(String.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: EntityRegionView_Items
         Used By: Serviceability
     */

    class EntityRegionView_Items: Codable {
        public var subType: String

        public var name: String

        public var uid: String

        public enum CodingKeys: String, CodingKey {
            case subType = "sub_type"

            case name

            case uid
        }

        public init(name: String, subType: String, uid: String) {
            self.subType = subType

            self.name = name

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            subType = try container.decode(String.self, forKey: .subType)

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(String.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
