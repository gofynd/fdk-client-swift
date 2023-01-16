

import Foundation
public extension PlatformClient {
    /*
         Model: GeneratedManifestItem
         Used By: Order
     */

    class GeneratedManifestItem: Codable {
        public var isActive: Bool?

        public var manifestId: String?

        public var status: String?

        public var createdAt: String?

        public var createdBy: String?

        public var companyId: Int?

        public var filters: ManifestFilter?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case manifestId = "manifest_id"

            case status

            case createdAt = "created_at"

            case createdBy = "created_by"

            case companyId = "company_id"

            case filters
        }

        public init(companyId: Int? = nil, createdAt: String? = nil, createdBy: String? = nil, filters: ManifestFilter? = nil, isActive: Bool? = nil, manifestId: String? = nil, status: String? = nil) {
            self.isActive = isActive

            self.manifestId = manifestId

            self.status = status

            self.createdAt = createdAt

            self.createdBy = createdBy

            self.companyId = companyId

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                createdAt = try container.decode(String.self, forKey: .createdAt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
