

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformOrderTrack
         Used By: Order
     */

    class PlatformOrderTrack: Codable {
        public var success: Bool

        public var requestId: String

        public var message: String

        public var mobile: String

        public var countryCode: String

        public var resendTimer: Int

        public var resendToken: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case requestId = "request_id"

            case message

            case mobile

            case countryCode = "country_code"

            case resendTimer = "resend_timer"

            case resendToken = "resend_token"
        }

        public init(countryCode: String, message: String, mobile: String, requestId: String, resendTimer: Int, resendToken: String? = nil, success: Bool) {
            self.success = success

            self.requestId = requestId

            self.message = message

            self.mobile = mobile

            self.countryCode = countryCode

            self.resendTimer = resendTimer

            self.resendToken = resendToken
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            requestId = try container.decode(String.self, forKey: .requestId)

            message = try container.decode(String.self, forKey: .message)

            mobile = try container.decode(String.self, forKey: .mobile)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            resendTimer = try container.decode(Int.self, forKey: .resendTimer)

            do {
                resendToken = try container.decode(String.self, forKey: .resendToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)

            try? container.encodeIfPresent(resendToken, forKey: .resendToken)
        }
    }
}
