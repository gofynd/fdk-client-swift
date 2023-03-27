

import Foundation
public extension PlatformClient {
    /*
         Model: GenerateSEOContent
         Used By: Content
     */

    class GenerateSEOContent: Codable {
        public var text: String?

        public enum CodingKeys: String, CodingKey {
            case text
        }

        public init(text: String? = nil) {
            self.text = text
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)
        }
    }
}
