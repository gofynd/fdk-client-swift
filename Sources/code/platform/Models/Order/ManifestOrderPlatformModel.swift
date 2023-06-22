

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var userId: String

        public var uid: String

        public var createdAt: String

        public var id: Int

        public var meta: ManifestMeta?

        public var filters: Filters?

        public var pdfMeta: PDFMeta?

        public var manifestId: String

        public var isActive: Bool

        public var status: String

        public var companyId: Int

        public var createdBy: String

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case uid

            case createdAt = "created_at"

            case id

            case meta

            case filters

            case pdfMeta = "pdf_meta"

            case manifestId = "manifest_id"

            case isActive = "is_active"

            case status

            case companyId = "company_id"

            case createdBy = "created_by"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.userId = userId

            self.uid = uid

            self.createdAt = createdAt

            self.id = id

            self.meta = meta

            self.filters = filters

            self.pdfMeta = pdfMeta

            self.manifestId = manifestId

            self.isActive = isActive

            self.status = status

            self.companyId = companyId

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userId = try container.decode(String.self, forKey: .userId)

            uid = try container.decode(String.self, forKey: .uid)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            id = try container.decode(Int.self, forKey: .id)

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

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manifestId = try container.decode(String.self, forKey: .manifestId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            status = try container.decode(String.self, forKey: .status)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdBy = try container.decode(String.self, forKey: .createdBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

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
        public var userId: String

        public var uid: String

        public var createdAt: String

        public var id: Int

        public var meta: ManifestMeta?

        public var filters: Filters?

        public var pdfMeta: PDFMeta?

        public var manifestId: String

        public var isActive: Bool

        public var status: String

        public var companyId: Int

        public var createdBy: String

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case uid

            case createdAt = "created_at"

            case id

            case meta

            case filters

            case pdfMeta = "pdf_meta"

            case manifestId = "manifest_id"

            case isActive = "is_active"

            case status

            case companyId = "company_id"

            case createdBy = "created_by"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.userId = userId

            self.uid = uid

            self.createdAt = createdAt

            self.id = id

            self.meta = meta

            self.filters = filters

            self.pdfMeta = pdfMeta

            self.manifestId = manifestId

            self.isActive = isActive

            self.status = status

            self.companyId = companyId

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userId = try container.decode(String.self, forKey: .userId)

            uid = try container.decode(String.self, forKey: .uid)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            id = try container.decode(Int.self, forKey: .id)

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

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manifestId = try container.decode(String.self, forKey: .manifestId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            status = try container.decode(String.self, forKey: .status)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdBy = try container.decode(String.self, forKey: .createdBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }
}
