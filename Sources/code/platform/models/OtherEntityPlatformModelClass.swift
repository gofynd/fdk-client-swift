

import Foundation
public extension PlatformClient {
    /*
         Model: OtherEntity
         Used By: Configuration
     */

    class OtherEntity: Codable {
        public var opted: Bool?

        public var permissions: [String]?

        public var lastPatch: [LastPatch]?

        public var id: String?

        public var integration: String?

        public var level: String?

        public var uid: Int?

        public var data: OtherEntityData?

        public var meta: [[String: Any]]?

        public var token: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case opted

            case permissions

            case lastPatch = "last_patch"

            case id = "_id"

            case integration

            case level

            case uid

            case data

            case meta

            case token

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"
        }

        public init(createdAt: String? = nil, data: OtherEntityData? = nil, integration: String? = nil, lastPatch: [LastPatch]? = nil, level: String? = nil, meta: [[String: Any]]? = nil, opted: Bool? = nil, permissions: [String]? = nil, token: String? = nil, uid: Int? = nil, updatedAt: String? = nil, id: String? = nil, v: Int? = nil) {
            self.opted = opted

            self.permissions = permissions

            self.lastPatch = lastPatch

            self.id = id

            self.integration = integration

            self.level = level

            self.uid = uid

            self.data = data

            self.meta = meta

            self.token = token

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                opted = try container.decode(Bool.self, forKey: .opted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                permissions = try container.decode([String].self, forKey: .permissions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastPatch = try container.decode([LastPatch].self, forKey: .lastPatch)

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
                integration = try container.decode(String.self, forKey: .integration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(OtherEntityData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([[String: Any]].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(opted, forKey: .opted)

            try? container.encodeIfPresent(permissions, forKey: .permissions)

            try? container.encodeIfPresent(lastPatch, forKey: .lastPatch)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(integration, forKey: .integration)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}
