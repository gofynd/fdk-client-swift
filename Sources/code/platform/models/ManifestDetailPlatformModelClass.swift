

import Foundation
public extension PlatformClient {
    /*
         Model: ManifestDetail
         Used By: Order
     */

    class ManifestDetail: Codable {
        public var uid: Int?

        public var isActive: Bool?

        public var companyId: Int?

        public var filters: ManifestFilter?

        public var meta: ManifestDetailMeta?

        public var createdBy: String?

        public var id: Int?

        public var manifestId: String?

        public var status: String?

        public var userId: Int?

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case isActive = "is_active"

            case companyId = "company_id"

            case filters

            case meta

            case createdBy = "created_by"

            case id

            case manifestId = "manifest_id"

            case status

            case userId = "user_id"

            case createdAt = "created_at"
        }

        public init(companyId: Int? = nil, createdAt: String? = nil, createdBy: String? = nil, filters: ManifestFilter? = nil, id: Int? = nil, isActive: Bool? = nil, manifestId: String? = nil, meta: ManifestDetailMeta? = nil, status: String? = nil, uid: Int? = nil, userId: Int? = nil) {
            self.uid = uid

            self.isActive = isActive

            self.companyId = companyId

            self.filters = filters

            self.meta = meta

            self.createdBy = createdBy

            self.id = id

            self.manifestId = manifestId

            self.status = status

            self.userId = userId

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(ManifestFilter.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ManifestDetailMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manifestId = try container.decode(String.self, forKey: .manifestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(Int.self, forKey: .userId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
