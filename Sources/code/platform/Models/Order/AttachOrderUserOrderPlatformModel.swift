

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AttachOrderUser
         Used By: Order
     */

    class AttachOrderUser: Codable {
        public var userInfo: AttachUserInfo

        public var otpData: AttachUserOtpData

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case userInfo = "user_info"

            case otpData = "otp_data"

            case fyndOrderId = "fynd_order_id"
        }

        public init(fyndOrderId: String, otpData: AttachUserOtpData, userInfo: AttachUserInfo) {
            self.userInfo = userInfo

            self.otpData = otpData

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userInfo = try container.decode(AttachUserInfo.self, forKey: .userInfo)

            otpData = try container.decode(AttachUserOtpData.self, forKey: .otpData)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(otpData, forKey: .otpData)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
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

        public var otpData: AttachUserOtpData

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case userInfo = "user_info"

            case otpData = "otp_data"

            case fyndOrderId = "fynd_order_id"
        }

        public init(fyndOrderId: String, otpData: AttachUserOtpData, userInfo: AttachUserInfo) {
            self.userInfo = userInfo

            self.otpData = otpData

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userInfo = try container.decode(AttachUserInfo.self, forKey: .userInfo)

            otpData = try container.decode(AttachUserOtpData.self, forKey: .otpData)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(otpData, forKey: .otpData)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
        }
    }
}
