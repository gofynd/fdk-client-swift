

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var status: String

        public var createdBy: String

        public var userId: String

        public var companyId: Int

        public var createdAt: String

        public var id: Int

        public var filters: Filters?

        public var isActive: Bool

        public var pdfMeta: PDFMeta?

        public var meta: ManifestMeta?

        public var uid: String

        public var manifestId: String

        public enum CodingKeys: String, CodingKey {
            case status

            case createdBy = "created_by"

            case userId = "user_id"

            case companyId = "company_id"

            case createdAt = "created_at"

            case id

            case filters

            case isActive = "is_active"

            case pdfMeta = "pdf_meta"

            case meta

            case uid

            case manifestId = "manifest_id"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.status = status

            self.createdBy = createdBy

            self.userId = userId

            self.companyId = companyId

            self.createdAt = createdAt

            self.id = id

            self.filters = filters

            self.isActive = isActive

            self.pdfMeta = pdfMeta

            self.meta = meta

            self.uid = uid

            self.manifestId = manifestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            userId = try container.decode(String.self, forKey: .userId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            id = try container.decode(Int.self, forKey: .id)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

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

            uid = try container.decode(String.self, forKey: .uid)

            manifestId = try container.decode(String.self, forKey: .manifestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var status: String

        public var createdBy: String

        public var userId: String

        public var companyId: Int

        public var createdAt: String

        public var id: Int

        public var filters: Filters?

        public var isActive: Bool

        public var pdfMeta: PDFMeta?

        public var meta: ManifestMeta?

        public var uid: String

        public var manifestId: String

        public enum CodingKeys: String, CodingKey {
            case status

            case createdBy = "created_by"

            case userId = "user_id"

            case companyId = "company_id"

            case createdAt = "created_at"

            case id

            case filters

            case isActive = "is_active"

            case pdfMeta = "pdf_meta"

            case meta

            case uid

            case manifestId = "manifest_id"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.status = status

            self.createdBy = createdBy

            self.userId = userId

            self.companyId = companyId

            self.createdAt = createdAt

            self.id = id

            self.filters = filters

            self.isActive = isActive

            self.pdfMeta = pdfMeta

            self.meta = meta

            self.uid = uid

            self.manifestId = manifestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            userId = try container.decode(String.self, forKey: .userId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            id = try container.decode(Int.self, forKey: .id)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

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

            uid = try container.decode(String.self, forKey: .uid)

            manifestId = try container.decode(String.self, forKey: .manifestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
        }
    }
}
