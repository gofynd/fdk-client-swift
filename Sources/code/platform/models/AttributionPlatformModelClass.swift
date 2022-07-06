

import Foundation
public extension PlatformClient {
    /*
         Model: Attribution
         Used By: Share
     */

    class Attribution: Codable {
        public var campaignCookieExpiry: String?

        public enum CodingKeys: String, CodingKey {
            case campaignCookieExpiry = "campaign_cookie_expiry"
        }

        public init(campaignCookieExpiry: String? = nil) {
            self.campaignCookieExpiry = campaignCookieExpiry
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                campaignCookieExpiry = try container.decode(String.self, forKey: .campaignCookieExpiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(campaignCookieExpiry, forKey: .campaignCookieExpiry)
        }
    }
}
