

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyDetails
         Used By: CompanyProfile
     */

    class CompanyDetails: Codable {
        public var websiteUrl: String?

        public var socials: [CompanySocialAccounts]?

        public enum CodingKeys: String, CodingKey {
            case websiteUrl = "website_url"

            case socials
        }

        public init(socials: [CompanySocialAccounts]? = nil, websiteUrl: String? = nil) {
            self.websiteUrl = websiteUrl

            self.socials = socials
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                websiteUrl = try container.decode(String.self, forKey: .websiteUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                socials = try container.decode([CompanySocialAccounts].self, forKey: .socials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)

            try? container.encodeIfPresent(socials, forKey: .socials)
        }
    }
}
