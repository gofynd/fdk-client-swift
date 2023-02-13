

import Foundation
public extension ApplicationClient {
    /*
         Model: CancelPaymentLinkResponse
         Used By: Payment
     */
    class CancelPaymentLinkResponse: Codable {
        public var message: String

        public var statusCode: Int

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case statusCode = "status_code"

            case success
        }

        public init(message: String, statusCode: Int, success: Bool) {
            self.message = message

            self.statusCode = statusCode

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
