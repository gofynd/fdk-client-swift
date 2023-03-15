

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiErrorResponse
         Used By: Cart
     */

    class OpenApiErrorResponse: Codable {
        public var message: String?

        public var errors: [String: Any]?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case message

            case errors

            case success
        }

        public init(errors: [String: Any]? = nil, message: String? = nil, success: Bool? = nil) {
            self.message = message

            self.errors = errors

            self.success = success
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
                errors = try container.decode([String: Any].self, forKey: .errors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(errors, forKey: .errors)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
