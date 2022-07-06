

import Foundation
public extension ApplicationClient {
    /*
         Model: Question
         Used By: Feedback
     */
    class Question: Codable {
        public var choices: [String]?

        public var maxLen: Int?

        public var text: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case choices

            case maxLen = "max_len"

            case text

            case type
        }

        public init(choices: [String]? = nil, maxLen: Int? = nil, text: String? = nil, type: String? = nil) {
            self.choices = choices

            self.maxLen = maxLen

            self.text = text

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                choices = try container.decode([String].self, forKey: .choices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxLen = try container.decode(Int.self, forKey: .maxLen)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(choices, forKey: .choices)

            try? container.encodeIfPresent(maxLen, forKey: .maxLen)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
