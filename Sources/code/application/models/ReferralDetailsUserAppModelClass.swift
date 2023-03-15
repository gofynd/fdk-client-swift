

import Foundation
public extension ApplicationClient {
    /*
         Model: ReferralDetailsUser
         Used By: Rewards
     */
    class ReferralDetailsUser: Codable {
        public var blocked: Bool?

        public var points: Double?

        public var redeemed: Bool?

        public var referralCode: String?

        public enum CodingKeys: String, CodingKey {
            case blocked

            case points

            case redeemed

            case referralCode = "referral_code"
        }

        public init(blocked: Bool? = nil, points: Double? = nil, redeemed: Bool? = nil, referralCode: String? = nil) {
            self.blocked = blocked

            self.points = points

            self.redeemed = redeemed

            self.referralCode = referralCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                blocked = try container.decode(Bool.self, forKey: .blocked)

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
                referralCode = try container.decode(String.self, forKey: .referralCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(blocked, forKey: .blocked)

            try? container.encodeIfPresent(points, forKey: .points)

            try? container.encodeIfPresent(redeemed, forKey: .redeemed)

            try? container.encodeIfPresent(referralCode, forKey: .referralCode)
        }
    }
}
