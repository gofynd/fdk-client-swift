

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: ThemeVersionsV2
         Used By: Theme
     */
    class ThemeVersionsV2: Codable {
        public var parentTheme: String?

        public var appliedTheme: String?

        public enum CodingKeys: String, CodingKey {
            case parentTheme = "parent_theme"

            case appliedTheme = "applied_theme"
        }

        public init(appliedTheme: String? = nil, parentTheme: String? = nil) {
            self.parentTheme = parentTheme

            self.appliedTheme = appliedTheme
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(parentTheme, forKey: .parentTheme)

            try? container.encodeIfPresent(appliedTheme, forKey: .appliedTheme)
        }
    }
}
