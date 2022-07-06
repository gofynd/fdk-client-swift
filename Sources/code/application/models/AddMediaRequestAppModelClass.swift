

import Foundation
public extension ApplicationClient {
    /*
         Model: AddMediaRequest
         Used By: Feedback
     */
    class AddMediaRequest: Codable {
        public var cloudId: String?

        public var cloudName: String?

        public var cloudProvider: String?

        public var entityId: String?

        public var entityType: String?

        public var mediaUrl: String?

        public var refId: String?

        public var refType: String?

        public var tags: [String]?

        public var thumbnailUrl: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case cloudId = "cloud_id"

            case cloudName = "cloud_name"

            case cloudProvider = "cloud_provider"

            case entityId = "entity_id"

            case entityType = "entity_type"

            case mediaUrl = "media_url"

            case refId = "ref_id"

            case refType = "ref_type"

            case tags

            case thumbnailUrl = "thumbnail_url"

            case type
        }

        public init(cloudId: String? = nil, cloudName: String? = nil, cloudProvider: String? = nil, entityId: String? = nil, entityType: String? = nil, mediaUrl: String? = nil, refId: String? = nil, refType: String? = nil, tags: [String]? = nil, thumbnailUrl: String? = nil, type: String? = nil) {
            self.cloudId = cloudId

            self.cloudName = cloudName

            self.cloudProvider = cloudProvider

            self.entityId = entityId

            self.entityType = entityType

            self.mediaUrl = mediaUrl

            self.refId = refId

            self.refType = refType

            self.tags = tags

            self.thumbnailUrl = thumbnailUrl

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cloudId = try container.decode(String.self, forKey: .cloudId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cloudName = try container.decode(String.self, forKey: .cloudName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cloudProvider = try container.decode(String.self, forKey: .cloudProvider)

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
                mediaUrl = try container.decode(String.self, forKey: .mediaUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refId = try container.decode(String.self, forKey: .refId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refType = try container.decode(String.self, forKey: .refType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                thumbnailUrl = try container.decode(String.self, forKey: .thumbnailUrl)

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

            try? container.encodeIfPresent(cloudId, forKey: .cloudId)

            try? container.encodeIfPresent(cloudName, forKey: .cloudName)

            try? container.encodeIfPresent(cloudProvider, forKey: .cloudProvider)

            try? container.encodeIfPresent(entityId, forKey: .entityId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(mediaUrl, forKey: .mediaUrl)

            try? container.encodeIfPresent(refId, forKey: .refId)

            try? container.encodeIfPresent(refType, forKey: .refType)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(thumbnailUrl, forKey: .thumbnailUrl)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
