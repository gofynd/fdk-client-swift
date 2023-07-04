

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: EntityRegionView_Items
         Used By: Serviceability
     */

    class EntityRegionView_Items: Codable {
        public var name: String

        public var uid: String

        public var subType: String

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case subType = "sub_type"
        }

        public init(name: String, subType: String, uid: String) {
            self.name = name

            self.uid = uid

            self.subType = subType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(String.self, forKey: .uid)

            subType = try container.decode(String.self, forKey: .subType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(subType, forKey: .subType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: EntityRegionView_Items
         Used By: Serviceability
     */

    class EntityRegionView_Items: Codable {
        public var name: String

        public var uid: String

        public var subType: String

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case subType = "sub_type"
        }

        public init(name: String, subType: String, uid: String) {
            self.name = name

            self.uid = uid

            self.subType = subType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(String.self, forKey: .uid)

            subType = try container.decode(String.self, forKey: .subType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(subType, forKey: .subType)
        }
    }
}
