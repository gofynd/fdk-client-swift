

import Foundation
public extension ApplicationClient {
    /*
         Model: Access
         Used By: Feedback
     */
    class Access: Codable {
        public var answer: Bool?

        public var askQuestion: Bool?

        public var comment: Bool?

        public var rnr: Bool?

        public enum CodingKeys: String, CodingKey {
            case answer

            case askQuestion = "ask_question"

            case comment

            case rnr
        }

        public init(answer: Bool? = nil, askQuestion: Bool? = nil, comment: Bool? = nil, rnr: Bool? = nil) {
            self.answer = answer

            self.askQuestion = askQuestion

            self.comment = comment

            self.rnr = rnr
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                answer = try container.decode(Bool.self, forKey: .answer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                askQuestion = try container.decode(Bool.self, forKey: .askQuestion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rnr = try container.decode(Bool.self, forKey: .rnr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(answer, forKey: .answer)

            try? container.encodeIfPresent(askQuestion, forKey: .askQuestion)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(rnr, forKey: .rnr)
        }
    }
}
