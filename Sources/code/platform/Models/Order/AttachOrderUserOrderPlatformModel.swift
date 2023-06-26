

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AttachOrderUser
         Used By: Order
     */

    class AttachOrderUser: Codable {
        public var fyndOrderId: String

        public var otpData: AttachUserOtpData

        public var userInfo: AttachUserInfo

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case otpData = "otp_data"

            case userInfo = "user_info"
        }

        public init(fyndOrderId: String, otpData: AttachUserOtpData, userInfo: AttachUserInfo) {
            self.fyndOrderId = fyndOrderId

            self.otpData = otpData

            self.userInfo = userInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            otpData = try container.decode(AttachUserOtpData.self, forKey: .otpData)

            userInfo = try container.decode(AttachUserInfo.self, forKey: .userInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(otpData, forKey: .otpData)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AttachOrderUser
         Used By: Order
     */

    class AttachOrderUser: Codable {
        public var fyndOrderId: String

        public var otpData: AttachUserOtpData

        public var userInfo: AttachUserInfo

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case otpData = "otp_data"

            case userInfo = "user_info"
        }

        public init(fyndOrderId: String, otpData: AttachUserOtpData, userInfo: AttachUserInfo) {
            self.fyndOrderId = fyndOrderId

            self.otpData = otpData

            self.userInfo = userInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            otpData = try container.decode(AttachUserOtpData.self, forKey: .otpData)

            userInfo = try container.decode(AttachUserInfo.self, forKey: .userInfo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(otpData, forKey: .otpData)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
        }
    }
}
