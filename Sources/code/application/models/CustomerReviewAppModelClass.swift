

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomerReview
         Used By: Feedback
     */
    class CustomerReview: Codable {
        public var autoDetectors: AutoDetectors?

        public var createdOn: String?

        public var deviceMeta: DeviceMeta?

        public var entity: ProductEntity?

        public var id: String?

        public var locationMeta: LocationMeta?

        public var modifiedOn: String?

        public var name: String?

        public var rating: ReviewRating?

        public var review: Review?

        public var slug: String?

        public var state: State?

        public var tags: [TagMeta]?

        public var template: Template?

        public var voteCount: VoteCount?

        public enum CodingKeys: String, CodingKey {
            case autoDetectors = "auto_detectors"

            case createdOn = "created_on"

            case deviceMeta = "device_meta"

            case entity

            case id

            case locationMeta = "location_meta"

            case modifiedOn = "modified_on"

            case name

            case rating

            case review

            case slug

            case state

            case tags

            case template

            case voteCount = "vote_count"
        }

        public init(autoDetectors: AutoDetectors? = nil, createdOn: String? = nil, deviceMeta: DeviceMeta? = nil, entity: ProductEntity? = nil, id: String? = nil, locationMeta: LocationMeta? = nil, modifiedOn: String? = nil, name: String? = nil, rating: ReviewRating? = nil, review: Review? = nil, slug: String? = nil, state: State? = nil, tags: [TagMeta]? = nil, template: Template? = nil, voteCount: VoteCount? = nil) {
            self.autoDetectors = autoDetectors

            self.createdOn = createdOn

            self.deviceMeta = deviceMeta

            self.entity = entity

            self.id = id

            self.locationMeta = locationMeta

            self.modifiedOn = modifiedOn

            self.name = name

            self.rating = rating

            self.review = review

            self.slug = slug

            self.state = state

            self.tags = tags

            self.template = template

            self.voteCount = voteCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                autoDetectors = try container.decode(AutoDetectors.self, forKey: .autoDetectors)

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
                deviceMeta = try container.decode(DeviceMeta.self, forKey: .deviceMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entity = try container.decode(ProductEntity.self, forKey: .entity)

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
                locationMeta = try container.decode(LocationMeta.self, forKey: .locationMeta)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rating = try container.decode(ReviewRating.self, forKey: .rating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                review = try container.decode(Review.self, forKey: .review)

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
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([TagMeta].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                template = try container.decode(Template.self, forKey: .template)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voteCount = try container.decode(VoteCount.self, forKey: .voteCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(autoDetectors, forKey: .autoDetectors)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(deviceMeta, forKey: .deviceMeta)

            try? container.encodeIfPresent(entity, forKey: .entity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(locationMeta, forKey: .locationMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(review, forKey: .review)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(template, forKey: .template)

            try? container.encodeIfPresent(voteCount, forKey: .voteCount)
        }
    }
}
