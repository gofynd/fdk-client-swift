

import Foundation
public extension ApplicationClient {
    /*
         Model: RedeemReferralCodeRequest
         Used By: Rewards
     */
    class RedeemReferralCodeRequest: Codable {
        public var deviceId: String

        public var referralCode: String

        public enum CodingKeys: String, CodingKey {
            case deviceId = "device_id"

            case referralCode = "referral_code"
        }

        public init(deviceId: String, referralCode: String) {
            self.deviceId = deviceId

            self.referralCode = referralCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deviceId = try container.decode(String.self, forKey: .deviceId)

            referralCode = try container.decode(String.self, forKey: .referralCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(referralCode, forKey: .referralCode)
        }
    }
}
