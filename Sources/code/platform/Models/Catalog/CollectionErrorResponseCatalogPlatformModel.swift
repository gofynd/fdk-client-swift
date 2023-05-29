

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CollectionErrorResponse
         Used By: Catalog
     */

    class CollectionErrorResponse: Codable {
        public var message: String

        public var code: Int

        public var errors: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case code

            case errors
        }

        public init(code: Int, errors: [String: Any]? = nil, message: String) {
            self.message = message

            self.code = code

            self.errors = errors
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            code = try container.decode(Int.self, forKey: .code)

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(errors, forKey: .errors)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CollectionErrorResponse
         Used By: Catalog
     */

    class CollectionErrorResponse: Codable {
        public var message: String

        public var code: Int

        public var errors: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case code

            case errors
        }

        public init(code: Int, errors: [String: Any]? = nil, message: String) {
            self.message = message

            self.code = code

            self.errors = errors
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            code = try container.decode(Int.self, forKey: .code)

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(errors, forKey: .errors)
        }
    }
}
