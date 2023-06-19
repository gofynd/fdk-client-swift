

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: UpdateThemeRequestBodyV2
         Used By: Theme
     */
    class UpdateThemeRequestBodyV2: Codable {
        public var config: ConfigV2?

        public var font: FontV2?

        public enum CodingKeys: String, CodingKey {
            case config

            case font
        }

        public init(config: ConfigV2? = nil, font: FontV2? = nil) {
            self.config = config

            self.font = font
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                config = try container.decode(ConfigV2.self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                font = try container.decode(FontV2.self, forKey: .font)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(font, forKey: .font)
        }
    }
}
