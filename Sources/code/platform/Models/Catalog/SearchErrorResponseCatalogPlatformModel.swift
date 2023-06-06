

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: SearchErrorResponse
         Used By: Catalog
     */

    class SearchErrorResponse: Codable {
        public var errors: [[String: Any]]?

        public var message: String

        public var code: Int

        public enum CodingKeys: String, CodingKey {
            case errors

            case message

            case code
        }

        public init(code: Int, errors: [[String: Any]]? = nil, message: String) {
            self.errors = errors

            self.message = message

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errors = try container.decode([[String: Any]].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            code = try container.decode(Int.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(errors, forKey: .errors)

            try? container.encodeIfPresent(message, forKey: .message)

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
        public var errors: [[String: Any]]?

        public var message: String

        public var code: Int

        public enum CodingKeys: String, CodingKey {
            case errors

            case message

            case code
        }

        public init(code: Int, errors: [[String: Any]]? = nil, message: String) {
            self.errors = errors

            self.message = message

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                errors = try container.decode([[String: Any]].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            code = try container.decode(Int.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(errors, forKey: .errors)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
