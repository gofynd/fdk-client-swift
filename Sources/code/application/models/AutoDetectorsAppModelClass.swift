

import Foundation
public extension ApplicationClient {
    /*
         Model: AutoDetectors
         Used By: Feedback
     */
    class AutoDetectors: Codable {
        public var textDetector: [TextDetector]?

        public enum CodingKeys: String, CodingKey {
            case textDetector = "text_detector"
        }

        public init(textDetector: [TextDetector]? = nil) {
            self.textDetector = textDetector
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                textDetector = try container.decode([TextDetector].self, forKey: .textDetector)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(textDetector, forKey: .textDetector)
        }
    }
}
