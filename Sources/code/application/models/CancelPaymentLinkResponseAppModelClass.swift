

import Foundation
public extension ApplicationClient {
    /*
         Model: CancelPaymentLinkResponse
         Used By: Payment
     */
    class CancelPaymentLinkResponse: Codable {
        public var statusCode: Int

        public var success: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case success

            case message
        }

        public init(message: String, statusCode: Int, success: Bool) {
            self.statusCode = statusCode

            self.success = success

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
