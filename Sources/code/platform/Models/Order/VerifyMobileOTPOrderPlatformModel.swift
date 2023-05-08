

import Foundation

public extension PlatformClient.Order {
    /*
         Model: VerifyMobileOTP
         Used By: Order
     */

    class VerifyMobileOTP: Codable {
        public var otpData: VerifyOtpData

        public enum CodingKeys: String, CodingKey {
            case otpData = "otp_data"
        }

        public init(otpData: VerifyOtpData) {
            self.otpData = otpData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otpData = try container.decode(VerifyOtpData.self, forKey: .otpData)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpData, forKey: .otpData)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: VerifyMobileOTP
         Used By: Order
     */

    class VerifyMobileOTP: Codable {
        public var otpData: VerifyOtpData

        public enum CodingKeys: String, CodingKey {
            case otpData = "otp_data"
        }

        public init(otpData: VerifyOtpData) {
            self.otpData = otpData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otpData = try container.decode(VerifyOtpData.self, forKey: .otpData)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpData, forKey: .otpData)
        }
    }
}
