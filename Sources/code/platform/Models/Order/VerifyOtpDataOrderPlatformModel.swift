

import Foundation

public extension PlatformClient.Order {
    /*
         Model: VerifyOtpData
         Used By: Order
     */

    class VerifyOtpData: Codable {
        public var otpCode: Int

        public var requestId: String

        public var mobile: String

        public enum CodingKeys: String, CodingKey {
            case otpCode = "otp_code"

            case requestId = "request_id"

            case mobile
        }

        public init(mobile: String, otpCode: Int, requestId: String) {
            self.otpCode = otpCode

            self.requestId = requestId

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otpCode = try container.decode(Int.self, forKey: .otpCode)

            requestId = try container.decode(String.self, forKey: .requestId)

            mobile = try container.decode(String.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

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
        public var otpCode: Int

        public var requestId: String

        public var mobile: String

        public enum CodingKeys: String, CodingKey {
            case otpCode = "otp_code"

            case requestId = "request_id"

            case mobile
        }

        public init(mobile: String, otpCode: Int, requestId: String) {
            self.otpCode = otpCode

            self.requestId = requestId

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otpCode = try container.decode(Int.self, forKey: .otpCode)

            requestId = try container.decode(String.self, forKey: .requestId)

            mobile = try container.decode(String.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
