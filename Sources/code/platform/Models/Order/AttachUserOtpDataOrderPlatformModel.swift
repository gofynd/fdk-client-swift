

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AttachUserOtpData
         Used By: Order
     */

    class AttachUserOtpData: Codable {
        public var requestId: String

        public var otpCode: Int

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case otpCode = "otp_code"
        }

        public init(otpCode: Int, requestId: String) {
            self.requestId = requestId

            self.otpCode = otpCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            requestId = try container.decode(String.self, forKey: .requestId)

            otpCode = try container.decode(Int.self, forKey: .otpCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AttachUserOtpData
         Used By: Order
     */

    class AttachUserOtpData: Codable {
        public var requestId: String

        public var otpCode: Int

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case otpCode = "otp_code"
        }

        public init(otpCode: Int, requestId: String) {
            self.requestId = requestId

            self.otpCode = otpCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            requestId = try container.decode(String.self, forKey: .requestId)

            otpCode = try container.decode(Int.self, forKey: .otpCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)
        }
    }
}
