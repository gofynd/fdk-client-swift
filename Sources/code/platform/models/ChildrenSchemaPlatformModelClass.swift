

import Foundation
public extension PlatformClient {
    /*
         Model: ChildrenSchema
         Used By: Content
     */

    class ChildrenSchema: Codable {
        public var question: String?

        public var answer: String?

        public var slug: String?

        public var application: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case question

            case answer

            case slug

            case application

            case id = "_id"
        }

        public init(answer: String? = nil, application: String? = nil, question: String? = nil, slug: String? = nil, id: String? = nil) {
            self.question = question

            self.answer = answer

            self.slug = slug

            self.application = application

            self.id = id
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

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(question, forKey: .question)

            try? container.encodeIfPresent(answer, forKey: .answer)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
