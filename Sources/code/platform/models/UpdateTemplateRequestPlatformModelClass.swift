

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateTemplateRequest
         Used By: Feedback
     */

    class UpdateTemplateRequest: Codable {
        public var active: Bool

        public var enableMediaType: String?

        public var enableQna: Bool?

        public var enableRating: Bool

        public var enableReview: Bool

        public var entity: EntityRequest

        public var rating: RatingRequest

        public var review: ReviewRequest

        public enum CodingKeys: String, CodingKey {
            case active

            case enableMediaType = "enable_media_type"

            case enableQna = "enable_qna"

            case enableRating = "enable_rating"

            case enableReview = "enable_review"

            case entity

            case rating

            case review
        }

        public init(active: Bool, enableMediaType: String? = nil, enableQna: Bool? = nil, enableRating: Bool, enableReview: Bool, entity: EntityRequest, rating: RatingRequest, review: ReviewRequest) {
            self.active = active

            self.enableMediaType = enableMediaType

            self.enableQna = enableQna

            self.enableRating = enableRating

            self.enableReview = enableReview

            self.entity = entity

            self.rating = rating

            self.review = review
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            active = try container.decode(Bool.self, forKey: .active)

            do {
                enableMediaType = try container.decode(String.self, forKey: .enableMediaType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enableQna = try container.decode(Bool.self, forKey: .enableQna)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enableRating = try container.decode(Bool.self, forKey: .enableRating)

            enableReview = try container.decode(Bool.self, forKey: .enableReview)

            entity = try container.decode(EntityRequest.self, forKey: .entity)

            rating = try container.decode(RatingRequest.self, forKey: .rating)

            review = try container.decode(ReviewRequest.self, forKey: .review)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(enableMediaType, forKey: .enableMediaType)

            try? container.encodeIfPresent(enableQna, forKey: .enableQna)

            try? container.encodeIfPresent(enableRating, forKey: .enableRating)

            try? container.encodeIfPresent(enableReview, forKey: .enableReview)

            try? container.encodeIfPresent(entity, forKey: .entity)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(review, forKey: .review)
        }
    }
}
