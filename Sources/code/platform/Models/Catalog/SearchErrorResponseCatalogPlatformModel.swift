

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: SearchErrorResponse
         Used By: Catalog
     */

    class SearchErrorResponse: Codable {
        public var message: String

        public var errors: [[String: Any]]?

        public var code: Int

        public enum CodingKeys: String, CodingKey {
            case message

            case errors

            case code
        }

        public init(code: Int, errors: [[String: Any]]? = nil, message: String) {
            self.message = message

            self.errors = errors

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                errors = try container.decode([[String: Any]].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(Int.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(errors, forKey: .errors)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: SearchErrorResponse
         Used By: Catalog
     */

    class SearchErrorResponse: Codable {
        public var message: String

        public var errors: [[String: Any]]?

        public var code: Int

        public enum CodingKeys: String, CodingKey {
            case message

            case errors

            case code
        }

        public init(code: Int, errors: [[String: Any]]? = nil, message: String) {
            self.message = message

            self.errors = errors

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            do {
                errors = try container.decode([[String: Any]].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(Int.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(errors, forKey: .errors)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
