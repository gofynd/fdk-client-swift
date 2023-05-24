

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AttachOrderUser
         Used By: Order
     */

    class AttachOrderUser: Codable {
        public var userInfo: AttachUserInfo

        public var fyndOrderId: String

        public var otpData: AttachUserOtpData

        public enum CodingKeys: String, CodingKey {
            case userInfo = "user_info"

            case fyndOrderId = "fynd_order_id"

            case otpData = "otp_data"
        }

        public init(fyndOrderId: String, otpData: AttachUserOtpData, userInfo: AttachUserInfo) {
            self.userInfo = userInfo

            self.fyndOrderId = fyndOrderId

            self.otpData = otpData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userInfo = try container.decode(AttachUserInfo.self, forKey: .userInfo)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            otpData = try container.decode(AttachUserOtpData.self, forKey: .otpData)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(otpData, forKey: .otpData)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AttachOrderUser
         Used By: Order
     */

    class AttachOrderUser: Codable {
        public var userInfo: AttachUserInfo

        public var fyndOrderId: String

        public var otpData: AttachUserOtpData

        public enum CodingKeys: String, CodingKey {
            case userInfo = "user_info"

            case fyndOrderId = "fynd_order_id"

            case otpData = "otp_data"
        }

        public init(fyndOrderId: String, otpData: AttachUserOtpData, userInfo: AttachUserInfo) {
            self.userInfo = userInfo

            self.fyndOrderId = fyndOrderId

            self.otpData = otpData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userInfo = try container.decode(AttachUserInfo.self, forKey: .userInfo)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            otpData = try container.decode(AttachUserOtpData.self, forKey: .otpData)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(otpData, forKey: .otpData)
        }
    }
}
