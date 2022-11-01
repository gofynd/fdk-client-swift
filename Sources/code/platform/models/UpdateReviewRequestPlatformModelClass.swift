

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateReviewRequest
         Used By: Feedback
     */

    class UpdateReviewRequest: Codable {
        public var active: Bool?

        public var application: String?

        public var approve: Bool?

        public var archive: Bool?

        public var attributesRating: [AttributeObject]?

        public var description: String?

        public var deviceMeta: DeviceMeta?

        public var entityId: String?

        public var entityType: String?

        public var mediaResource: [MediaMeta]?

        public var rating: Double?

        public var reviewId: String?

        public var templateId: String?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case active

            case application

            case approve

            case archive

            case attributesRating = "attributes_rating"

            case description

            case deviceMeta = "device_meta"

            case entityId = "entity_id"

            case entityType = "entity_type"

            case mediaResource = "media_resource"

            case rating

            case reviewId = "review_id"

            case templateId = "template_id"

            case title
        }

        public init(active: Bool? = nil, application: String? = nil, approve: Bool? = nil, archive: Bool? = nil, attributesRating: [AttributeObject]? = nil, description: String? = nil, deviceMeta: DeviceMeta? = nil, entityId: String? = nil, entityType: String? = nil, mediaResource: [MediaMeta]? = nil, rating: Double? = nil, reviewId: String? = nil, templateId: String? = nil, title: String? = nil) {
            self.active = active

            self.application = application

            self.approve = approve

            self.archive = archive

            self.attributesRating = attributesRating

            self.description = description

            self.deviceMeta = deviceMeta

            self.entityId = entityId

            self.entityType = entityType

            self.mediaResource = mediaResource

            self.rating = rating

            self.reviewId = reviewId

            self.templateId = templateId

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                active = try container.decode(Bool.self, forKey: .active)

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
                approve = try container.decode(Bool.self, forKey: .approve)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archive = try container.decode(Bool.self, forKey: .archive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributesRating = try container.decode([AttributeObject].self, forKey: .attributesRating)

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
                deviceMeta = try container.decode(DeviceMeta.self, forKey: .deviceMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityId = try container.decode(String.self, forKey: .entityId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mediaResource = try container.decode([MediaMeta].self, forKey: .mediaResource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rating = try container.decode(Double.self, forKey: .rating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reviewId = try container.decode(String.self, forKey: .reviewId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateId = try container.decode(String.self, forKey: .templateId)

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

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(approve, forKey: .approve)

            try? container.encodeIfPresent(archive, forKey: .archive)

            try? container.encodeIfPresent(attributesRating, forKey: .attributesRating)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(deviceMeta, forKey: .deviceMeta)

            try? container.encodeIfPresent(entityId, forKey: .entityId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(mediaResource, forKey: .mediaResource)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(reviewId, forKey: .reviewId)

            try? container.encodeIfPresent(templateId, forKey: .templateId)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
