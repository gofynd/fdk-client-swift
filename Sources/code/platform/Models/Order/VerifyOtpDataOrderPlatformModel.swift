

import Foundation

public extension PlatformClient.Order {
    /*
         Model: VerifyOtpData
         Used By: Order
     */

    class VerifyOtpData: Codable {
        public var mobile: String

        public var requestId: String

        public var otpCode: Int

        public enum CodingKeys: String, CodingKey {
            case mobile

            case requestId = "request_id"

            case otpCode = "otp_code"
        }

        public init(mobile: String, otpCode: Int, requestId: String) {
            self.mobile = mobile

            self.requestId = requestId

            self.otpCode = otpCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            requestId = try container.decode(String.self, forKey: .requestId)

            otpCode = try container.decode(Int.self, forKey: .otpCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: VerifyOtpData
         Used By: Order
     */

    class VerifyOtpData: Codable {
        public var mobile: String

        public var requestId: String

        public var otpCode: Int

        public enum CodingKeys: String, CodingKey {
            case mobile

            case requestId = "request_id"

            case otpCode = "otp_code"
        }

        public init(mobile: String, otpCode: Int, requestId: String) {
            self.mobile = mobile

            self.requestId = requestId

            self.otpCode = otpCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            requestId = try container.decode(String.self, forKey: .requestId)

            otpCode = try container.decode(Int.self, forKey: .otpCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)
        }
    }
}
