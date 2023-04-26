

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Meta
         Used By: Order
     */

    class Meta: Codable {
        public var lockData: [String: Any]?

        public var dimension: Dimensions?

        public enum CodingKeys: String, CodingKey {
            case lockData = "lock_data"

            case dimension
        }

        public init(dimension: Dimensions? = nil, lockData: [String: Any]? = nil) {
            self.lockData = lockData

            self.dimension = dimension
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lockData = try container.decode([String: Any].self, forKey: .lockData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimension = try container.decode(Dimensions.self, forKey: .dimension)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lockData, forKey: .lockData)

            try? container.encodeIfPresent(dimension, forKey: .dimension)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Meta
         Used By: Order
     */

    class Meta: Codable {
        public var lockData: [String: Any]?

        public var dimension: Dimensions?

        public enum CodingKeys: String, CodingKey {
            case lockData = "lock_data"

            case dimension
        }

        public init(dimension: Dimensions? = nil, lockData: [String: Any]? = nil) {
            self.lockData = lockData

            self.dimension = dimension
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lockData = try container.decode([String: Any].self, forKey: .lockData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimension = try container.decode(Dimensions.self, forKey: .dimension)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lockData, forKey: .lockData)

            try? container.encodeIfPresent(dimension, forKey: .dimension)
        }
    }
}
