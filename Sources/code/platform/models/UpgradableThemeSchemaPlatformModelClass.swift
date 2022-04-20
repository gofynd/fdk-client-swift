

import Foundation
public extension PlatformClient {
    /*
         Model: UpgradableThemeSchema
         Used By: Theme
     */

    class UpgradableThemeSchema: Codable {
        public var parentTheme: String?

        public var appliedTheme: String?

        public var upgrade: Bool?

        public enum CodingKeys: String, CodingKey {
            case parentTheme = "parent_theme"

            case appliedTheme = "applied_theme"

            case upgrade
        }

        public init(appliedTheme: String? = nil, parentTheme: String? = nil, upgrade: Bool? = nil) {
            self.parentTheme = parentTheme

            self.appliedTheme = appliedTheme

            self.upgrade = upgrade
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                parentTheme = try container.decode(String.self, forKey: .parentTheme)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appliedTheme = try container.decode(String.self, forKey: .appliedTheme)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upgrade = try container.decode(Bool.self, forKey: .upgrade)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(parentTheme, forKey: .parentTheme)

            try? container.encodeIfPresent(appliedTheme, forKey: .appliedTheme)

            try? container.encodeIfPresent(upgrade, forKey: .upgrade)
        }
    }
}
