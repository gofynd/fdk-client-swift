

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AttachOrderUser
         Used By: Order
     */

    class AttachOrderUser: Codable {
        public var otpData: AttachUserOtpData

        public var userInfo: AttachUserInfo

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case otpData = "otp_data"

            case userInfo = "user_info"

            case fyndOrderId = "fynd_order_id"
        }

        public init(fyndOrderId: String, otpData: AttachUserOtpData, userInfo: AttachUserInfo) {
            self.otpData = otpData

            self.userInfo = userInfo

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otpData = try container.decode(AttachUserOtpData.self, forKey: .otpData)

            userInfo = try container.decode(AttachUserInfo.self, forKey: .userInfo)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpData, forKey: .otpData)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

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
        public var otpData: AttachUserOtpData

        public var userInfo: AttachUserInfo

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case otpData = "otp_data"

            case userInfo = "user_info"

            case fyndOrderId = "fynd_order_id"
        }

        public init(fyndOrderId: String, otpData: AttachUserOtpData, userInfo: AttachUserInfo) {
            self.otpData = otpData

            self.userInfo = userInfo

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            otpData = try container.decode(AttachUserOtpData.self, forKey: .otpData)

            userInfo = try container.decode(AttachUserInfo.self, forKey: .userInfo)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpData, forKey: .otpData)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
        }
    }
}
