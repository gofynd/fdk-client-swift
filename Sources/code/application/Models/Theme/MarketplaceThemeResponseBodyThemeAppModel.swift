

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: MarketplaceThemeResponseBody
         Used By: Theme
     */
    class MarketplaceThemeResponseBody: Codable {
        public var themes: [MarketplaceTheme]?

        public var page: PaginationSchema?

        public enum CodingKeys: String, CodingKey {
            case themes

            case page
        }

        public init(page: PaginationSchema? = nil, themes: [MarketplaceTheme]? = nil) {
            self.themes = themes

            self.page = page
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
                page = try container.decode(PaginationSchema.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(themes, forKey: .themes)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
