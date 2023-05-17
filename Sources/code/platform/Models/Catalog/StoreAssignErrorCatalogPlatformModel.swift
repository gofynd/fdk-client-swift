

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: StoreAssignError
         Used By: Catalog
     */

    class StoreAssignError: Codable {
        public var message: String?

        public var value: [String: Any]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case value

            case type
        }

        public init(message: String? = nil, type: String? = nil, value: [String: Any]? = nil) {
            self.message = message

            self.value = value

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode([String: Any].self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(message, forKey: .message)

            try? container.encode(value, forKey: .value)

            try? container.encode(type, forKey: .type)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: StoreAssignError
         Used By: Catalog
     */

    class StoreAssignError: Codable {
        public var message: String?

        public var value: [String: Any]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case value

            case type
        }

        public init(message: String? = nil, type: String? = nil, value: [String: Any]? = nil) {
            self.message = message

            self.value = value

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode([String: Any].self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(message, forKey: .message)

            try? container.encode(value, forKey: .value)

            try? container.encode(type, forKey: .type)
        }
    }
}
