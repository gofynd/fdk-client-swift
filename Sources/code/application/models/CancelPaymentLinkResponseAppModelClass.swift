

import Foundation
public extension ApplicationClient {
    /*
         Model: CancelPaymentLinkResponse
         Used By: Payment
     */
    class CancelPaymentLinkResponse: Codable {
        public var success: Bool

        public var message: String

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case statusCode = "status_code"
        }

        public init(message: String, statusCode: Int, success: Bool) {
            self.success = success

            self.message = message

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
