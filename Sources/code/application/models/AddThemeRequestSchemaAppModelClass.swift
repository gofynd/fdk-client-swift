

import Foundation
public extension ApplicationClient {
    /*
         Model: AddThemeRequestSchema
         Used By: Theme
     */
    class AddThemeRequestSchema: Codable {
        public var themeId: String?

        public enum CodingKeys: String, CodingKey {
            case themeId = "theme_id"
        }

        public init(themeId: String? = nil) {
            self.themeId = themeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                themeId = try container.decode(String.self, forKey: .themeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(themeId, forKey: .themeId)
        }
    }
}
