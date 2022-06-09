

import Foundation
public extension ApplicationClient {
    /*
         Model: CancelOrResendPaymentLinkResponse
         Used By: Payment
     */
    class CancelOrResendPaymentLinkResponse: Codable {
        public var success: Bool

        public var statusCode: Int

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case statusCode = "status_code"

            case message
        }

        public init(message: String, statusCode: Int, success: Bool) {
            self.success = success

            self.statusCode = statusCode

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
