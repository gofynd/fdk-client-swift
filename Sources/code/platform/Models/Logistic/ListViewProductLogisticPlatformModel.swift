

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: ListViewProduct
         Used By: Logistic
     */

    class ListViewProduct: Codable {
        public var type: String

        public var count: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case count
        }

        public init(count: Int, type: String) {
            self.type = type

            self.count = count
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            count = try container.decode(Int.self, forKey: .count)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: ListViewProduct
         Used By: Logistic
     */

    class ListViewProduct: Codable {
        public var type: String

        public var count: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case count
        }

        public init(count: Int, type: String) {
            self.type = type

            self.count = count
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            count = try container.decode(Int.self, forKey: .count)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }
}
