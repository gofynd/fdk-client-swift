

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: HeaderSetting
         Used By: Theme
     */
    class HeaderSetting: Codable {
        public var headerBackground: String?

        public var headerNav: String?

        public var headerIcon: String?

        public enum CodingKeys: String, CodingKey {
            case headerBackground = "header_background"

            case headerNav = "header_nav"

            case headerIcon = "header_icon"
        }

        public init(headerBackground: String? = nil, headerIcon: String? = nil, headerNav: String? = nil) {
            self.headerBackground = headerBackground

            self.headerNav = headerNav

            self.headerIcon = headerIcon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                headerBackground = try container.decode(String.self, forKey: .headerBackground)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerNav = try container.decode(String.self, forKey: .headerNav)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerIcon = try container.decode(String.self, forKey: .headerIcon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(headerBackground, forKey: .headerBackground)

            try? container.encodeIfPresent(headerNav, forKey: .headerNav)

            try? container.encodeIfPresent(headerIcon, forKey: .headerIcon)
        }
    }
}
