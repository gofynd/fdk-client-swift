

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: FooterSettingV2
         Used By: Theme
     */
    class FooterSettingV2: Codable {
        public var footerBackground: String?

        public var footerBottomBackground: String?

        public var footerHeadingText: String?

        public var footerBodyText: String?

        public var footerIcon: String?

        public enum CodingKeys: String, CodingKey {
            case footerBackground = "footer_background"

            case footerBottomBackground = "footer_bottom_background"

            case footerHeadingText = "footer_heading_text"

            case footerBodyText = "footer_body_text"

            case footerIcon = "footer_icon"
        }

        public init(footerBackground: String? = nil, footerBodyText: String? = nil, footerBottomBackground: String? = nil, footerHeadingText: String? = nil, footerIcon: String? = nil) {
            self.footerBackground = footerBackground

            self.footerBottomBackground = footerBottomBackground

            self.footerHeadingText = footerHeadingText

            self.footerBodyText = footerBodyText

            self.footerIcon = footerIcon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                footerBackground = try container.decode(String.self, forKey: .footerBackground)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footerBottomBackground = try container.decode(String.self, forKey: .footerBottomBackground)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footerHeadingText = try container.decode(String.self, forKey: .footerHeadingText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footerBodyText = try container.decode(String.self, forKey: .footerBodyText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                footerIcon = try container.decode(String.self, forKey: .footerIcon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(footerBackground, forKey: .footerBackground)

            try? container.encodeIfPresent(footerBottomBackground, forKey: .footerBottomBackground)

            try? container.encodeIfPresent(footerHeadingText, forKey: .footerHeadingText)

            try? container.encodeIfPresent(footerBodyText, forKey: .footerBodyText)

            try? container.encodeIfPresent(footerIcon, forKey: .footerIcon)
        }
    }
}
