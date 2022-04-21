

import Foundation
public extension ApplicationClient {
    /*
         Model: AddMediaListRequest
         Used By: Feedback
     */
    class AddMediaListRequest: Codable {
        public var entityId: String?

        public var entityType: String?

        public var mediaList: [AddMediaRequest]?

        public var refId: String?

        public var refType: String?

        public enum CodingKeys: String, CodingKey {
            case entityId = "entity_id"

            case entityType = "entity_type"

            case mediaList = "media_list"

            case refId = "ref_id"

            case refType = "ref_type"
        }

        public init(entityId: String? = nil, entityType: String? = nil, mediaList: [AddMediaRequest]? = nil, refId: String? = nil, refType: String? = nil) {
            self.entityId = entityId

            self.entityType = entityType

            self.mediaList = mediaList

            self.refId = refId

            self.refType = refType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                mediaList = try container.decode([AddMediaRequest].self, forKey: .mediaList)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entityId, forKey: .entityId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(mediaList, forKey: .mediaList)

            try? container.encodeIfPresent(refId, forKey: .refId)

            try? container.encodeIfPresent(refType, forKey: .refType)
        }
    }
}
