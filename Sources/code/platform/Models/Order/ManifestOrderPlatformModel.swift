

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var meta: ManifestMeta?

        public var isActive: Bool

        public var createdAt: String

        public var uid: String

        public var manifestId: String

        public var status: String

        public var id: Int

        public var filters: Filters?

        public var pdfMeta: PDFMeta?

        public var companyId: Int

        public var userId: String

        public var createdBy: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case isActive = "is_active"

            case createdAt = "created_at"

            case uid

            case manifestId = "manifest_id"

            case status

            case id

            case filters

            case pdfMeta = "pdf_meta"

            case companyId = "company_id"

            case userId = "user_id"

            case createdBy = "created_by"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.meta = meta

            self.isActive = isActive

            self.createdAt = createdAt

            self.uid = uid

            self.manifestId = manifestId

            self.status = status

            self.id = id

            self.filters = filters

            self.pdfMeta = pdfMeta

            self.companyId = companyId

            self.userId = userId

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            uid = try container.decode(String.self, forKey: .uid)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            status = try container.decode(String.self, forKey: .status)

            id = try container.decode(Int.self, forKey: .id)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            userId = try container.decode(String.self, forKey: .userId)

            createdBy = try container.decode(String.self, forKey: .createdBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userId, forKey: .userId)

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
        public var meta: ManifestMeta?

        public var isActive: Bool

        public var createdAt: String

        public var uid: String

        public var manifestId: String

        public var status: String

        public var id: Int

        public var filters: Filters?

        public var pdfMeta: PDFMeta?

        public var companyId: Int

        public var userId: String

        public var createdBy: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case isActive = "is_active"

            case createdAt = "created_at"

            case uid

            case manifestId = "manifest_id"

            case status

            case id

            case filters

            case pdfMeta = "pdf_meta"

            case companyId = "company_id"

            case userId = "user_id"

            case createdBy = "created_by"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.meta = meta

            self.isActive = isActive

            self.createdAt = createdAt

            self.uid = uid

            self.manifestId = manifestId

            self.status = status

            self.id = id

            self.filters = filters

            self.pdfMeta = pdfMeta

            self.companyId = companyId

            self.userId = userId

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            uid = try container.decode(String.self, forKey: .uid)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            status = try container.decode(String.self, forKey: .status)

            id = try container.decode(Int.self, forKey: .id)

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

            companyId = try container.decode(Int.self, forKey: .companyId)

            userId = try container.decode(String.self, forKey: .userId)

            createdBy = try container.decode(String.self, forKey: .createdBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }
}
