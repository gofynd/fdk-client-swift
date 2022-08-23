

import Foundation
public extension ApplicationClient {
    /*
         Model: UI
         Used By: Feedback
     */
    class UI: Codable {
        public var feedbackQuestion: [String]?

        public var icon: UIIcon?

        public var text: [String]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case feedbackQuestion = "feedback_question"

            case icon

            case text

            case type
        }

        public init(feedbackQuestion: [String]? = nil, icon: UIIcon? = nil, text: [String]? = nil, type: String? = nil) {
            self.feedbackQuestion = feedbackQuestion

            self.icon = icon

            self.text = text

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                feedbackQuestion = try container.decode([String].self, forKey: .feedbackQuestion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                icon = try container.decode(UIIcon.self, forKey: .icon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode([String].self, forKey: .text)

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

            try? container.encodeIfPresent(feedbackQuestion, forKey: .feedbackQuestion)

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
