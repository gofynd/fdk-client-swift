

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ErrorResponse
         Used By: Payment
     */
    class ErrorResponse: Codable {
        public var statusCode: Int

        public var success: Bool

        public var error: ErrorDescription?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case success

            case error

            case message
        }

        public init(error: ErrorDescription? = nil, message: String, statusCode: Int, success: Bool) {
            self.statusCode = statusCode

            self.success = success

            self.error = error

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                error = try container.decode(ErrorDescription.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(error, forKey: .error)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
