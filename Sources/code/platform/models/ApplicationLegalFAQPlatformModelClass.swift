

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationLegalFAQ
         Used By: Content
     */

    class ApplicationLegalFAQ: Codable {
        public var question: String?

        public var answer: String?

        public enum CodingKeys: String, CodingKey {
            case question

            case answer
        }

        public init(answer: String? = nil, question: String? = nil) {
            self.question = question

            self.answer = answer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                question = try container.decode(String.self, forKey: .question)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                answer = try container.decode(String.self, forKey: .answer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(question, forKey: .question)

            try? container.encodeIfPresent(answer, forKey: .answer)
        }
    }
}
