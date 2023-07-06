

import Foundation

public extension PlatformClient.Order {
    /*
         Model: VerifyOtpData
         Used By: Order
     */

    class VerifyOtpData: Codable {
        public var mobile: String

        public var otpCode: Int

        public var requestId: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case otpCode = "otp_code"

            case requestId = "request_id"
        }

        public init(mobile: String, otpCode: Int, requestId: String) {
            self.mobile = mobile

            self.otpCode = otpCode

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            otpCode = try container.decode(Int.self, forKey: .otpCode)

            requestId = try container.decode(String.self, forKey: .requestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)

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
        public var mobile: String

        public var otpCode: Int

        public var requestId: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case otpCode = "otp_code"

            case requestId = "request_id"
        }

        public init(mobile: String, otpCode: Int, requestId: String) {
            self.mobile = mobile

            self.otpCode = otpCode

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            otpCode = try container.decode(Int.self, forKey: .otpCode)

            requestId = try container.decode(String.self, forKey: .requestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }
}
