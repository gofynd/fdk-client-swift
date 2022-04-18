import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiErrorResponse
         Used By: Cart
     */

    class OpenApiErrorResponse: Codable {
        public var message: String?

        public var success: Bool?

        public var errors: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case errors
        }

        public init(errors: [String: Any]? = nil, message: String? = nil, success: Bool? = nil) {
            self.message = message

            self.success = success

            self.errors = errors
        }

        public func duplicate() -> OpenApiErrorResponse {
            let dict = self.dictionary!
            let copy = OpenApiErrorResponse(dictionary: dict)!
            return copy
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
                success = try container.decode(Bool.self, forKey: .success)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(errors, forKey: .errors)
        }
    }
}
