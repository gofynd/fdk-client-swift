

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: ThemeAndUserDetailsResponse
         Used By: Theme
     */
    class ThemeAndUserDetailsResponse: Codable {
        public var themes: [MarketplaceTheme]?

        public var user: [ThemeCreator]?

        public enum CodingKeys: String, CodingKey {
            case themes

            case user
        }

        public init(themes: [MarketplaceTheme]? = nil, user: [ThemeCreator]? = nil) {
            self.themes = themes

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                themes = try container.decode([MarketplaceTheme].self, forKey: .themes)

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

            try? container.encodeIfPresent(themes, forKey: .themes)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
