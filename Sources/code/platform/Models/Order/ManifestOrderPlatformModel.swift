

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var uid: String

        public var userId: String

        public var companyId: Int

        public var createdAt: String

        public var pdfMeta: PDFMeta?

        public var meta: ManifestMeta?

        public var status: String

        public var id: Int

        public var createdBy: String

        public var filters: Filters?

        public var manifestId: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case uid

            case userId = "user_id"

            case companyId = "company_id"

            case createdAt = "created_at"

            case pdfMeta = "pdf_meta"

            case meta

            case status

            case id

            case createdBy = "created_by"

            case filters

            case manifestId = "manifest_id"

            case isActive = "is_active"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.uid = uid

            self.userId = userId

            self.companyId = companyId

            self.createdAt = createdAt

            self.pdfMeta = pdfMeta

            self.meta = meta

            self.status = status

            self.id = id

            self.createdBy = createdBy

            self.filters = filters

            self.manifestId = manifestId

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            userId = try container.decode(String.self, forKey: .userId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            id = try container.decode(Int.self, forKey: .id)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manifestId = try container.decode(String.self, forKey: .manifestId)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var uid: String

        public var userId: String

        public var companyId: Int

        public var createdAt: String

        public var pdfMeta: PDFMeta?

        public var meta: ManifestMeta?

        public var status: String

        public var id: Int

        public var createdBy: String

        public var filters: Filters?

        public var manifestId: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case uid

            case userId = "user_id"

            case companyId = "company_id"

            case createdAt = "created_at"

            case pdfMeta = "pdf_meta"

            case meta

            case status

            case id

            case createdBy = "created_by"

            case filters

            case manifestId = "manifest_id"

            case isActive = "is_active"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.uid = uid

            self.userId = userId

            self.companyId = companyId

            self.createdAt = createdAt

            self.pdfMeta = pdfMeta

            self.meta = meta

            self.status = status

            self.id = id

            self.createdBy = createdBy

            self.filters = filters

            self.manifestId = manifestId

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            userId = try container.decode(String.self, forKey: .userId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            id = try container.decode(Int.self, forKey: .id)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manifestId = try container.decode(String.self, forKey: .manifestId)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
