

import Foundation
public extension ApplicationClient {
    /*
         Model: sendOTPApplicationResponse
         Used By: Order
     */
    class sendOTPApplicationResponse: Codable {
        public var success: Bool

        public var requestId: String

        public var message: String

        public var resendTimer: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case requestId = "request_id"

            case message

            case resendTimer = "resend_timer"
        }

        public init(message: String, requestId: String, resendTimer: Int, success: Bool) {
            self.success = success

            self.requestId = requestId

            self.message = message

            self.resendTimer = resendTimer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            requestId = try container.decode(String.self, forKey: .requestId)

            message = try container.decode(String.self, forKey: .message)

            resendTimer = try container.decode(Int.self, forKey: .resendTimer)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
        }
    }
}
