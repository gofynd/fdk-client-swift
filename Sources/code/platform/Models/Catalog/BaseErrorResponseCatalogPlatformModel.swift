

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: BaseErrorResponse
         Used By: Catalog
     */

    class BaseErrorResponse: Codable {
        public var code: Int

        public var message: String

        public var errors: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case code

            case message

            case errors
        }

        public init(code: Int, errors: [String: Any]? = nil, message: String) {
            self.code = code

            self.message = message

            self.errors = errors
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(Int.self, forKey: .code)

            message = try container.decode(String.self, forKey: .message)

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(errors, forKey: .errors)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: BaseErrorResponse
         Used By: Catalog
     */

    class BaseErrorResponse: Codable {
        public var code: Int

        public var message: String

        public var errors: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case code

            case message

            case errors
        }

        public init(code: Int, errors: [String: Any]? = nil, message: String) {
            self.code = code

            self.message = message

            self.errors = errors
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(Int.self, forKey: .code)

            message = try container.decode(String.self, forKey: .message)

            do {
                errors = try container.decode([String: Any].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(errors, forKey: .errors)
        }
    }
}
