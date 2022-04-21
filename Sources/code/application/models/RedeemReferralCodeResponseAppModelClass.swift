

import Foundation
public extension ApplicationClient {
    /*
         Model: RedeemReferralCodeResponse
         Used By: Rewards
     */
    class RedeemReferralCodeResponse: Codable {
        public var message: String?

        public var points: Double?

        public var redeemed: Bool?

        public var referrerId: String?

        public var referrerInfo: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case points

            case redeemed

            case referrerId = "referrer_id"

            case referrerInfo = "referrer_info"
        }

        public init(message: String? = nil, points: Double? = nil, redeemed: Bool? = nil, referrerId: String? = nil, referrerInfo: String? = nil) {
            self.message = message

            self.points = points

            self.redeemed = redeemed

            self.referrerId = referrerId

            self.referrerInfo = referrerInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

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

            do {
                redeemed = try container.decode(Bool.self, forKey: .redeemed)

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
                referrerInfo = try container.decode(String.self, forKey: .referrerInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(points, forKey: .points)

            try? container.encodeIfPresent(redeemed, forKey: .redeemed)

            try? container.encodeIfPresent(referrerId, forKey: .referrerId)

            try? container.encodeIfPresent(referrerInfo, forKey: .referrerInfo)
        }
    }
}
