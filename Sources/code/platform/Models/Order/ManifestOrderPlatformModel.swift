

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var filters: Filters?

        public var userId: String

        public var id: Int

        public var createdAt: String

        public var status: String

        public var companyId: Int

        public var isActive: Bool

        public var pdfMeta: PDFMeta?

        public var uid: String

        public var manifestId: String

        public var meta: ManifestMeta?

        public var createdBy: String

        public enum CodingKeys: String, CodingKey {
            case filters

            case userId = "user_id"

            case id

            case createdAt = "created_at"

            case status

            case companyId = "company_id"

            case isActive = "is_active"

            case pdfMeta = "pdf_meta"

            case uid

            case manifestId = "manifest_id"

            case meta

            case createdBy = "created_by"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.filters = filters

            self.userId = userId

            self.id = id

            self.createdAt = createdAt

            self.status = status

            self.companyId = companyId

            self.isActive = isActive

            self.pdfMeta = pdfMeta

            self.uid = uid

            self.manifestId = manifestId

            self.meta = meta

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            id = try container.decode(Int.self, forKey: .id)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            status = try container.decode(String.self, forKey: .status)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdBy = try container.decode(String.self, forKey: .createdBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(meta, forKey: .meta)

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
        public var filters: Filters?

        public var userId: String

        public var id: Int

        public var createdAt: String

        public var status: String

        public var companyId: Int

        public var isActive: Bool

        public var pdfMeta: PDFMeta?

        public var uid: String

        public var manifestId: String

        public var meta: ManifestMeta?

        public var createdBy: String

        public enum CodingKeys: String, CodingKey {
            case filters

            case userId = "user_id"

            case id

            case createdAt = "created_at"

            case status

            case companyId = "company_id"

            case isActive = "is_active"

            case pdfMeta = "pdf_meta"

            case uid

            case manifestId = "manifest_id"

            case meta

            case createdBy = "created_by"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.filters = filters

            self.userId = userId

            self.id = id

            self.createdAt = createdAt

            self.status = status

            self.companyId = companyId

            self.isActive = isActive

            self.pdfMeta = pdfMeta

            self.uid = uid

            self.manifestId = manifestId

            self.meta = meta

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            id = try container.decode(Int.self, forKey: .id)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            status = try container.decode(String.self, forKey: .status)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdBy = try container.decode(String.self, forKey: .createdBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }
}
