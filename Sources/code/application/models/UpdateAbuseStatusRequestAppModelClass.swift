

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateAbuseStatusRequest
         Used By: Feedback
     */
    class UpdateAbuseStatusRequest: Codable {
        public var abusive: Bool?

        public var active: Bool?

        public var approve: Bool?

        public var description: String?

        public var entityId: String?

        public var entityType: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case abusive

            case active

            case approve

            case description

            case entityId = "entity_id"

            case entityType = "entity_type"

            case id
        }

        public init(abusive: Bool? = nil, active: Bool? = nil, approve: Bool? = nil, description: String? = nil, entityId: String? = nil, entityType: String? = nil, id: String? = nil) {
            self.abusive = abusive

            self.active = active

            self.approve = approve

            self.description = description

            self.entityId = entityId

            self.entityType = entityType

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                abusive = try container.decode(Bool.self, forKey: .abusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

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
                description = try container.decode(String.self, forKey: .description)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(abusive, forKey: .abusive)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(approve, forKey: .approve)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(entityId, forKey: .entityId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
