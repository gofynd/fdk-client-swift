

import Foundation
public extension ApplicationClient {
    /*
         Model: FAQ
         Used By: Content
     */
    class FAQ: Codable {
        public var slug: String?

        public var question: String?

        public var answer: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case question

            case answer
        }

        public init(answer: String? = nil, question: String? = nil, slug: String? = nil) {
            self.slug = slug

            self.question = question

            self.answer = answer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(question, forKey: .question)

            try? container.encodeIfPresent(answer, forKey: .answer)
        }
    }
}
