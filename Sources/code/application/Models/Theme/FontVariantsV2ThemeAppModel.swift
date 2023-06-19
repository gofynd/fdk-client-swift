

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: FontVariantsV2
         Used By: Theme
     */
    class FontVariantsV2: Codable {
        public var light: FontVariantV2?

        public var regular: FontVariantV2?

        public var medium: FontVariantV2?

        public var semiBold: FontVariantV2?

        public var bold: FontVariantV2?

        public enum CodingKeys: String, CodingKey {
            case light

            case regular

            case medium

            case semiBold = "semi_bold"

            case bold
        }

        public init(bold: FontVariantV2? = nil, light: FontVariantV2? = nil, medium: FontVariantV2? = nil, regular: FontVariantV2? = nil, semiBold: FontVariantV2? = nil) {
            self.light = light

            self.regular = regular

            self.medium = medium

            self.semiBold = semiBold

            self.bold = bold
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                light = try container.decode(FontVariantV2.self, forKey: .light)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                regular = try container.decode(FontVariantV2.self, forKey: .regular)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                medium = try container.decode(FontVariantV2.self, forKey: .medium)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                semiBold = try container.decode(FontVariantV2.self, forKey: .semiBold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bold = try container.decode(FontVariantV2.self, forKey: .bold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(light, forKey: .light)

            try? container.encodeIfPresent(regular, forKey: .regular)

            try? container.encodeIfPresent(medium, forKey: .medium)

            try? container.encodeIfPresent(semiBold, forKey: .semiBold)

            try? container.encodeIfPresent(bold, forKey: .bold)
        }
    }
}
