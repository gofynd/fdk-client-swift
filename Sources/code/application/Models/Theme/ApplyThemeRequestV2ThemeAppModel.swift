

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: ApplyThemeRequestV2
         Used By: Theme
     */
    class ApplyThemeRequestV2: Codable {
        public var marketplaceThemeId: String

        public enum CodingKeys: String, CodingKey {
            case marketplaceThemeId = "marketplace_theme_id"
        }

        public init(marketplaceThemeId: String) {
            self.marketplaceThemeId = marketplaceThemeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            marketplaceThemeId = try container.decode(String.self, forKey: .marketplaceThemeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marketplaceThemeId, forKey: .marketplaceThemeId)
        }
    }
}
