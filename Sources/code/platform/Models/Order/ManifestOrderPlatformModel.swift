

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var manifestId: String

        public var uid: String

        public var id: Int

        public var createdBy: String

        public var pdfMeta: PDFMeta?

        public var status: String

        public var userId: String

        public var companyId: Int

        public var meta: ManifestMeta?

        public var filters: Filters?

        public var isActive: Bool

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case manifestId = "manifest_id"

            case uid

            case id

            case createdBy = "created_by"

            case pdfMeta = "pdf_meta"

            case status

            case userId = "user_id"

            case companyId = "company_id"

            case meta

            case filters

            case isActive = "is_active"

            case createdAt = "created_at"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.manifestId = manifestId

            self.uid = uid

            self.id = id

            self.createdBy = createdBy

            self.pdfMeta = pdfMeta

            self.status = status

            self.userId = userId

            self.companyId = companyId

            self.meta = meta

            self.filters = filters

            self.isActive = isActive

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            uid = try container.decode(String.self, forKey: .uid)

            id = try container.decode(Int.self, forKey: .id)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            userId = try container.decode(String.self, forKey: .userId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var manifestId: String

        public var uid: String

        public var id: Int

        public var createdBy: String

        public var pdfMeta: PDFMeta?

        public var status: String

        public var userId: String

        public var companyId: Int

        public var meta: ManifestMeta?

        public var filters: Filters?

        public var isActive: Bool

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case manifestId = "manifest_id"

            case uid

            case id

            case createdBy = "created_by"

            case pdfMeta = "pdf_meta"

            case status

            case userId = "user_id"

            case companyId = "company_id"

            case meta

            case filters

            case isActive = "is_active"

            case createdAt = "created_at"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.manifestId = manifestId

            self.uid = uid

            self.id = id

            self.createdBy = createdBy

            self.pdfMeta = pdfMeta

            self.status = status

            self.userId = userId

            self.companyId = companyId

            self.meta = meta

            self.filters = filters

            self.isActive = isActive

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            uid = try container.decode(String.self, forKey: .uid)

            id = try container.decode(Int.self, forKey: .id)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            userId = try container.decode(String.self, forKey: .userId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
