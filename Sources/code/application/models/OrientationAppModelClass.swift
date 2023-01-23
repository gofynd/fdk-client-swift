

import Foundation
public extension ApplicationClient {
    /*
         Model: Orientation
         Used By: Content
     */
    class Orientation: Codable {
        public var portrait: [String]?

        public var landscape: [String]?

        public enum CodingKeys: String, CodingKey {
            case portrait

            case landscape
        }

        public init(landscape: [String]? = nil, portrait: [String]? = nil) {
            self.portrait = portrait

            self.landscape = landscape
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                portrait = try container.decode([String].self, forKey: .portrait)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landscape = try container.decode([String].self, forKey: .landscape)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(landscape, forKey: .landscape)
        }
    }
}
