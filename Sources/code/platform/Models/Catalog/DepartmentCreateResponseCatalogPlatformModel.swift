

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentCreateResponse
         Used By: Catalog
     */

    class DepartmentCreateResponse: Codable {
        public var message: String

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case message

            case uid
        }

        public init(message: String, uid: Int) {
            self.message = message

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentCreateResponse
         Used By: Catalog
     */

    class DepartmentCreateResponse: Codable {
        public var message: String

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case message

            case uid
        }

        public init(message: String, uid: Int) {
            self.message = message

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
