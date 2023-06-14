

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: BaseErrorResponse
         Used By: Catalog
     */

    class BaseErrorResponse: Codable {
        public var errors: [String: Any]?

        public var code: Int

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case errors

            case code

            case message
        }

        public init(code: Int, errors: [String: Any]? = nil, message: String) {
            self.errors = errors

            self.code = code

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(Int.self, forKey: .code)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(errors, forKey: .errors)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: BaseErrorResponse
         Used By: Catalog
     */

    class BaseErrorResponse: Codable {
        public var errors: [String: Any]?

        public var code: Int

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case errors

            case code

            case message
        }

        public init(code: Int, errors: [String: Any]? = nil, message: String) {
            self.errors = errors

            self.code = code

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(Int.self, forKey: .code)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(errors, forKey: .errors)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
