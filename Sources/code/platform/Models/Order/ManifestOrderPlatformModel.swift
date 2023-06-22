

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var manifestId: String

        public var status: String

        public var filters: Filters?

        public var meta: ManifestMeta?

        public var companyId: Int

        public var uid: String

        public var isActive: Bool

        public var id: Int

        public var createdAt: String

        public var userId: String

        public var pdfMeta: PDFMeta?

        public var createdBy: String

        public enum CodingKeys: String, CodingKey {
            case manifestId = "manifest_id"

            case status

            case filters

            case meta

            case companyId = "company_id"

            case uid

            case isActive = "is_active"

            case id

            case createdAt = "created_at"

            case userId = "user_id"

            case pdfMeta = "pdf_meta"

            case createdBy = "created_by"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.manifestId = manifestId

            self.status = status

            self.filters = filters

            self.meta = meta

            self.companyId = companyId

            self.uid = uid

            self.isActive = isActive

            self.id = id

            self.createdAt = createdAt

            self.userId = userId

            self.pdfMeta = pdfMeta

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            status = try container.decode(String.self, forKey: .status)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            uid = try container.decode(String.self, forKey: .uid)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            id = try container.decode(Int.self, forKey: .id)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdBy = try container.decode(String.self, forKey: .createdBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
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

        public var status: String

        public var filters: Filters?

        public var meta: ManifestMeta?

        public var companyId: Int

        public var uid: String

        public var isActive: Bool

        public var id: Int

        public var createdAt: String

        public var userId: String

        public var pdfMeta: PDFMeta?

        public var createdBy: String

        public enum CodingKeys: String, CodingKey {
            case manifestId = "manifest_id"

            case status

            case filters

            case meta

            case companyId = "company_id"

            case uid

            case isActive = "is_active"

            case id

            case createdAt = "created_at"

            case userId = "user_id"

            case pdfMeta = "pdf_meta"

            case createdBy = "created_by"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.manifestId = manifestId

            self.status = status

            self.filters = filters

            self.meta = meta

            self.companyId = companyId

            self.uid = uid

            self.isActive = isActive

            self.id = id

            self.createdAt = createdAt

            self.userId = userId

            self.pdfMeta = pdfMeta

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            status = try container.decode(String.self, forKey: .status)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            uid = try container.decode(String.self, forKey: .uid)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            id = try container.decode(Int.self, forKey: .id)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdBy = try container.decode(String.self, forKey: .createdBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }
}
