

import Foundation
public extension ApplicationClient {
    /*
         Model: Review
         Used By: Feedback
     */
    class Review: Codable {
        public var answerIds: [String]?

        public var comments: [String]?

        public var description: String?

        public var mediaMeta: [MediaMeta]?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case answerIds = "answer_ids"

            case comments

            case description

            case mediaMeta = "media_meta"

            case title
        }

        public init(answerIds: [String]? = nil, comments: [String]? = nil, description: String? = nil, mediaMeta: [MediaMeta]? = nil, title: String? = nil) {
            self.answerIds = answerIds

            self.comments = comments

            self.description = description

            self.mediaMeta = mediaMeta

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                answerIds = try container.decode([String].self, forKey: .answerIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comments = try container.decode([String].self, forKey: .comments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mediaMeta = try container.decode([MediaMeta].self, forKey: .mediaMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(answerIds, forKey: .answerIds)

            try? container.encodeIfPresent(comments, forKey: .comments)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(mediaMeta, forKey: .mediaMeta)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
