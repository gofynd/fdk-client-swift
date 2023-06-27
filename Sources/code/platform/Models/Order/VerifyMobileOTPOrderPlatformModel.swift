

import Foundation

public extension PlatformClient.Order {
    /*
         Model: VerifyMobileOTP
         Used By: Order
     */

    class VerifyMobileOTP: Codable {
        public var otpData: VerifyOtpData

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case otpData = "otp_data"

            case fyndOrderId = "fynd_order_id"
        }

        public init(fyndOrderId: String, otpData: VerifyOtpData) {
            self.otpData = otpData

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otpData = try container.decode(VerifyOtpData.self, forKey: .otpData)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpData, forKey: .otpData)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
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

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case otpData = "otp_data"

            case fyndOrderId = "fynd_order_id"
        }

        public init(fyndOrderId: String, otpData: VerifyOtpData) {
            self.otpData = otpData

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otpData = try container.decode(VerifyOtpData.self, forKey: .otpData)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpData, forKey: .otpData)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
        }
    }
}
