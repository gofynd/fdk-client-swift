

import Foundation
public extension ApplicationClient {
    /*
         Model: ReferralDetailsResponse
         Used By: Rewards
     */
    class ReferralDetailsResponse: Codable {
        public var referral: Offer?

        public var share: ShareMessages?

        public var user: ReferralDetailsUser?

        public var referrerInfo: String?

        public var termsConditionsLink: String?

        public enum CodingKeys: String, CodingKey {
            case referral

            case share

            case user

            case referrerInfo = "referrer_info"

            case termsConditionsLink = "terms_conditions_link"
        }

        public init(referral: Offer? = nil, referrerInfo: String? = nil, share: ShareMessages? = nil, termsConditionsLink: String? = nil, user: ReferralDetailsUser? = nil) {
            self.referral = referral

            self.share = share

            self.user = user

            self.referrerInfo = referrerInfo

            self.termsConditionsLink = termsConditionsLink
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                referral = try container.decode(Offer.self, forKey: .referral)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                share = try container.decode(ShareMessages.self, forKey: .share)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(ReferralDetailsUser.self, forKey: .user)

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
                termsConditionsLink = try container.decode(String.self, forKey: .termsConditionsLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(referral, forKey: .referral)

            try? container.encodeIfPresent(share, forKey: .share)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(referrerInfo, forKey: .referrerInfo)

            try? container.encodeIfPresent(termsConditionsLink, forKey: .termsConditionsLink)
        }
    }
}
