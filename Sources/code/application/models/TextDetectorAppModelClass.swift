

import Foundation
public extension ApplicationClient {
    /*
         Model: TextDetector
         Used By: Feedback
     */
    class TextDetector: Codable {
        public var confidence: Double?

        public var text: String?

        public var textClass: String?

        public var textType: String?

        public enum CodingKeys: String, CodingKey {
            case confidence

            case text

            case textClass = "text_class"

            case textType = "text_type"
        }

        public init(confidence: Double? = nil, text: String? = nil, textClass: String? = nil, textType: String? = nil) {
            self.confidence = confidence

            self.text = text

            self.textClass = textClass

            self.textType = textType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                confidence = try container.decode(Double.self, forKey: .confidence)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textClass = try container.decode(String.self, forKey: .textClass)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textType = try container.decode(String.self, forKey: .textType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(confidence, forKey: .confidence)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(textClass, forKey: .textClass)

            try? container.encodeIfPresent(textType, forKey: .textType)
        }
    }
}
