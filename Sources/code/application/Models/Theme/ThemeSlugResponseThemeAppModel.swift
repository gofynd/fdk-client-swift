

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: ThemeSlugResponse
         Used By: Theme
     */
    class ThemeSlugResponse: Codable {
        public var theme: MarketplaceTheme?

        public var organization: Organization?

        public var user: [ThemeCreator]?

        public enum CodingKeys: String, CodingKey {
            case theme

            case organization

            case user
        }

        public init(organization: Organization? = nil, theme: MarketplaceTheme? = nil, user: [ThemeCreator]? = nil) {
            self.theme = theme

            self.organization = organization

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                theme = try container.decode(MarketplaceTheme.self, forKey: .theme)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                organization = try container.decode(Organization.self, forKey: .organization)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode([ThemeCreator].self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(theme, forKey: .theme)

            try? container.encodeIfPresent(organization, forKey: .organization)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
