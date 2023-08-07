

import Foundation
public extension ApplicationClient.Rewards {
    /*
         Model: RedeemReferralCodeResponse
         Used By: Rewards
     */
    class RedeemReferralCodeResponse: Codable {
        public var redeemed: Bool?

        public var message: String?

        public var referrerInfo: String?

        public var referrerId: String?

        public var points: Double?

        public enum CodingKeys: String, CodingKey {
            case redeemed

            case message

            case referrerInfo = "referrer_info"

            case referrerId = "referrer_id"

            case points
        }

        public init(message: String? = nil, points: Double? = nil, redeemed: Bool? = nil, referrerId: String? = nil, referrerInfo: String? = nil) {
            self.redeemed = redeemed

            self.message = message

            self.referrerInfo = referrerInfo

            self.referrerId = referrerId

            self.points = points
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                redeemed = try container.decode(Bool.self, forKey: .redeemed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                referrerInfo = try container.decode(String.self, forKey: .referrerInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                referrerId = try container.decode(String.self, forKey: .referrerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(redeemed, forKey: .redeemed)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(referrerInfo, forKey: .referrerInfo)

            try? container.encodeIfPresent(referrerId, forKey: .referrerId)

            try? container.encodeIfPresent(points, forKey: .points)
        }
    }
}
