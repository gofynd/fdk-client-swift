

import Foundation

public extension PlatformClient.Order {
    /*
         Model: VerifyOtpData
         Used By: Order
     */

    class VerifyOtpData: Codable {
        public var requestId: String

        public var otpCode: Int

        public var mobile: String

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case otpCode = "otp_code"

            case mobile
        }

        public init(mobile: String, otpCode: Int, requestId: String) {
            self.requestId = requestId

            self.otpCode = otpCode

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            requestId = try container.decode(String.self, forKey: .requestId)

            otpCode = try container.decode(Int.self, forKey: .otpCode)

            mobile = try container.decode(String.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: VerifyOtpData
         Used By: Order
     */

    class VerifyOtpData: Codable {
        public var requestId: String

        public var otpCode: Int

        public var mobile: String

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case otpCode = "otp_code"

            case mobile
        }

        public init(mobile: String, otpCode: Int, requestId: String) {
            self.requestId = requestId

            self.otpCode = otpCode

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            requestId = try container.decode(String.self, forKey: .requestId)

            otpCode = try container.decode(Int.self, forKey: .otpCode)

            mobile = try container.decode(String.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
