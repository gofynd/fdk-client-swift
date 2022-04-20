

import Foundation
public extension ApplicationClient {
    /*
         Model: Template
         Used By: Feedback
     */
    class Template: Codable {
        public var dateMeta: DateMeta?

        public var entity: Entity?

        public var id: String?

        public var name: String?

        public var rating: Rating?

        public var review: TemplateReview?

        public var state: FeedbackState?

        public enum CodingKeys: String, CodingKey {
            case dateMeta = "date_meta"

            case entity

            case id

            case name

            case rating

            case review

            case state
        }

        public init(dateMeta: DateMeta? = nil, entity: Entity? = nil, id: String? = nil, name: String? = nil, rating: Rating? = nil, review: TemplateReview? = nil, state: FeedbackState? = nil) {
            self.dateMeta = dateMeta

            self.entity = entity

            self.id = id

            self.name = name

            self.rating = rating

            self.review = review

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entity = try container.decode(Entity.self, forKey: .entity)

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

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rating = try container.decode(Rating.self, forKey: .rating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                review = try container.decode(TemplateReview.self, forKey: .review)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(FeedbackState.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(entity, forKey: .entity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(review, forKey: .review)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
