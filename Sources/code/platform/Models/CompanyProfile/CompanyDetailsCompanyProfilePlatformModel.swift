

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: CompanyDetails
         Used By: CompanyProfile
     */

    class CompanyDetails: Codable {
        public var socials: [CompanySocialAccounts]?

        public var websiteUrl: String?

        public enum CodingKeys: String, CodingKey {
            case socials

            case websiteUrl = "website_url"
        }

        public init(socials: [CompanySocialAccounts]? = nil, websiteUrl: String? = nil) {
            self.socials = socials

            self.websiteUrl = websiteUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                socials = try container.decode([CompanySocialAccounts].self, forKey: .socials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                websiteUrl = try container.decode(String.self, forKey: .websiteUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(socials, forKey: .socials)

            try? container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)
        }
    }
}
