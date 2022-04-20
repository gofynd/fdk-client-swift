

import Foundation
public extension ApplicationClient {
    /*
         Model: Language
         Used By: Content
     */
    class Language: Codable {
        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case display
        }

        public init(display: String? = nil) {
            self.display = display
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}
