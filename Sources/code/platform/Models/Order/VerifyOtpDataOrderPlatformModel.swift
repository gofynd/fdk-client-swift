

import Foundation

public extension PlatformClient.Order {
    /*
         Model: VerifyOtpData
         Used By: Order
     */

    class VerifyOtpData: Codable {
        public var otpCode: Int

        public var mobile: String

        public var requestId: String

        public enum CodingKeys: String, CodingKey {
            case otpCode = "otp_code"

            case mobile

            case requestId = "request_id"
        }

        public init(mobile: String, otpCode: Int, requestId: String) {
            self.otpCode = otpCode

            self.mobile = mobile

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otpCode = try container.decode(Int.self, forKey: .otpCode)

            mobile = try container.decode(String.self, forKey: .mobile)

            requestId = try container.decode(String.self, forKey: .requestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
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

        public var mobile: String

        public var requestId: String

        public enum CodingKeys: String, CodingKey {
            case otpCode = "otp_code"

            case mobile

            case requestId = "request_id"
        }

        public init(mobile: String, otpCode: Int, requestId: String) {
            self.otpCode = otpCode

            self.mobile = mobile

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otpCode = try container.decode(Int.self, forKey: .otpCode)

            mobile = try container.decode(String.self, forKey: .mobile)

            requestId = try container.decode(String.self, forKey: .requestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }
}
