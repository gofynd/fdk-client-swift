

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var pdfMeta: PDFMeta?

        public var id: Int

        public var uid: String

        public var meta: ManifestMeta?

        public var userId: String

        public var createdAt: String

        public var companyId: Int

        public var createdBy: String

        public var status: String

        public var manifestId: String

        public var filters: Filters?

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case pdfMeta = "pdf_meta"

            case id

            case uid

            case meta

            case userId = "user_id"

            case createdAt = "created_at"

            case companyId = "company_id"

            case createdBy = "created_by"

            case status

            case manifestId = "manifest_id"

            case filters

            case isActive = "is_active"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.pdfMeta = pdfMeta

            self.id = id

            self.uid = uid

            self.meta = meta

            self.userId = userId

            self.createdAt = createdAt

            self.companyId = companyId

            self.createdBy = createdBy

            self.status = status

            self.manifestId = manifestId

            self.filters = filters

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            status = try container.decode(String.self, forKey: .status)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(filters, forKey: .filters)

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
        public var pdfMeta: PDFMeta?

        public var id: Int

        public var uid: String

        public var meta: ManifestMeta?

        public var userId: String

        public var createdAt: String

        public var companyId: Int

        public var createdBy: String

        public var status: String

        public var manifestId: String

        public var filters: Filters?

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case pdfMeta = "pdf_meta"

            case id

            case uid

            case meta

            case userId = "user_id"

            case createdAt = "created_at"

            case companyId = "company_id"

            case createdBy = "created_by"

            case status

            case manifestId = "manifest_id"

            case filters

            case isActive = "is_active"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.pdfMeta = pdfMeta

            self.id = id

            self.uid = uid

            self.meta = meta

            self.userId = userId

            self.createdAt = createdAt

            self.companyId = companyId

            self.createdBy = createdBy

            self.status = status

            self.manifestId = manifestId

            self.filters = filters

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            status = try container.decode(String.self, forKey: .status)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
