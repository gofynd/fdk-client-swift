

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: ThemeSettingV2
         Used By: Theme
     */

    class ThemeSettingV2: Codable {
        public var pageBackground: String?

        public var themeAccent: String?

        public enum CodingKeys: String, CodingKey {
            case pageBackground = "page_background"

            case themeAccent = "theme_accent"
        }

        public init(pageBackground: String? = nil, themeAccent: String? = nil) {
            self.pageBackground = pageBackground

            self.themeAccent = themeAccent
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pageBackground = try container.decode(String.self, forKey: .pageBackground)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                themeAccent = try container.decode(String.self, forKey: .themeAccent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageBackground, forKey: .pageBackground)

            try? container.encodeIfPresent(themeAccent, forKey: .themeAccent)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: ThemeSettingV2
         Used By: Theme
     */

    class ThemeSettingV2: Codable {
        public var pageBackground: String?

        public var themeAccent: String?

        public enum CodingKeys: String, CodingKey {
            case pageBackground = "page_background"

            case themeAccent = "theme_accent"
        }

        public init(pageBackground: String? = nil, themeAccent: String? = nil) {
            self.pageBackground = pageBackground

            self.themeAccent = themeAccent
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pageBackground = try container.decode(String.self, forKey: .pageBackground)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                themeAccent = try container.decode(String.self, forKey: .themeAccent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageBackground, forKey: .pageBackground)

            try? container.encodeIfPresent(themeAccent, forKey: .themeAccent)
        }
    }
}
