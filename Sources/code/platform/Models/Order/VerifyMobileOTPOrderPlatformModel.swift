

import Foundation

public extension PlatformClient.Order {
    /*
         Model: VerifyMobileOTP
         Used By: Order
     */

    class VerifyMobileOTP: Codable {
        public var fyndOrderId: String

        public var otpData: VerifyOtpData

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case otpData = "otp_data"
        }

        public init(fyndOrderId: String, otpData: VerifyOtpData) {
            self.fyndOrderId = fyndOrderId

            self.otpData = otpData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            otpData = try container.decode(VerifyOtpData.self, forKey: .otpData)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

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
        public var fyndOrderId: String

        public var otpData: VerifyOtpData

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case otpData = "otp_data"
        }

        public init(fyndOrderId: String, otpData: VerifyOtpData) {
            self.fyndOrderId = fyndOrderId

            self.otpData = otpData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            otpData = try container.decode(VerifyOtpData.self, forKey: .otpData)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(otpData, forKey: .otpData)
        }
    }
}
