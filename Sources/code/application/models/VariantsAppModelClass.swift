

import Foundation
public extension ApplicationClient {
    /*
         Model: Variants
         Used By: Theme
     */
    class Variants: Codable {
        public var medium: Medium?

        public var semiBold: SemiBold?

        public var bold: Bold?

        public var light: Light?

        public var regular: Regular?

        public enum CodingKeys: String, CodingKey {
            case medium

            case semiBold = "semi_bold"

            case bold

            case light

            case regular
        }

        public init(bold: Bold? = nil, light: Light? = nil, medium: Medium? = nil, regular: Regular? = nil, semiBold: SemiBold? = nil) {
            self.medium = medium

            self.semiBold = semiBold

            self.bold = bold

            self.light = light

            self.regular = regular
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                medium = try container.decode(Medium.self, forKey: .medium)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                semiBold = try container.decode(SemiBold.self, forKey: .semiBold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bold = try container.decode(Bold.self, forKey: .bold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                light = try container.decode(Light.self, forKey: .light)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                regular = try container.decode(Regular.self, forKey: .regular)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(medium, forKey: .medium)

            try? container.encodeIfPresent(semiBold, forKey: .semiBold)

            try? container.encodeIfPresent(bold, forKey: .bold)

            try? container.encodeIfPresent(light, forKey: .light)

            try? container.encodeIfPresent(regular, forKey: .regular)
        }
    }
}
