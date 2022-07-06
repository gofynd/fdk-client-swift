

import Foundation
public extension ApplicationClient {
    /*
         Model: ReviewMetric
         Used By: Feedback
     */
    class ReviewMetric: Codable {
        public var attributeMetric: [RatingMetric]?

        public var createdOn: String?

        public var entity: Entity?

        public var id: String?

        public var modifiedOn: String?

        public var ratingAvg: Double?

        public var ratingCount: Int?

        public var ratingMetric: [RatingMetric]?

        public var reviewCount: Int?

        public enum CodingKeys: String, CodingKey {
            case attributeMetric = "attribute_metric"

            case createdOn = "created_on"

            case entity

            case id

            case modifiedOn = "modified_on"

            case ratingAvg = "rating_avg"

            case ratingCount = "rating_count"

            case ratingMetric = "rating_metric"

            case reviewCount = "review_count"
        }

        public init(attributeMetric: [RatingMetric]? = nil, createdOn: String? = nil, entity: Entity? = nil, id: String? = nil, modifiedOn: String? = nil, ratingAvg: Double? = nil, ratingCount: Int? = nil, ratingMetric: [RatingMetric]? = nil, reviewCount: Int? = nil) {
            self.attributeMetric = attributeMetric

            self.createdOn = createdOn

            self.entity = entity

            self.id = id

            self.modifiedOn = modifiedOn

            self.ratingAvg = ratingAvg

            self.ratingCount = ratingCount

            self.ratingMetric = ratingMetric

            self.reviewCount = reviewCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attributeMetric = try container.decode([RatingMetric].self, forKey: .attributeMetric)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ratingAvg = try container.decode(Double.self, forKey: .ratingAvg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ratingMetric = try container.decode([RatingMetric].self, forKey: .ratingMetric)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reviewCount = try container.decode(Int.self, forKey: .reviewCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributeMetric, forKey: .attributeMetric)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(entity, forKey: .entity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(ratingAvg, forKey: .ratingAvg)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(ratingMetric, forKey: .ratingMetric)

            try? container.encodeIfPresent(reviewCount, forKey: .reviewCount)
        }
    }
}
