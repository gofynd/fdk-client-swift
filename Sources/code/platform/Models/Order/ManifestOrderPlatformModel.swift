

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var createdBy: String

        public var createdAt: String

        public var uid: String

        public var pdfMeta: PDFMeta?

        public var userId: String

        public var filters: Filters?

        public var isActive: Bool

        public var companyId: Int

        public var meta: ManifestMeta?

        public var status: String

        public var id: Int

        public var manifestId: String

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case createdAt = "created_at"

            case uid

            case pdfMeta = "pdf_meta"

            case userId = "user_id"

            case filters

            case isActive = "is_active"

            case companyId = "company_id"

            case meta

            case status

            case id

            case manifestId = "manifest_id"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.createdBy = createdBy

            self.createdAt = createdAt

            self.uid = uid

            self.pdfMeta = pdfMeta

            self.userId = userId

            self.filters = filters

            self.isActive = isActive

            self.companyId = companyId

            self.meta = meta

            self.status = status

            self.id = id

            self.manifestId = manifestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            id = try container.decode(Int.self, forKey: .id)

            manifestId = try container.decode(String.self, forKey: .manifestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(id, forKey: .id)

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
        public var createdBy: String

        public var createdAt: String

        public var uid: String

        public var pdfMeta: PDFMeta?

        public var userId: String

        public var filters: Filters?

        public var isActive: Bool

        public var companyId: Int

        public var meta: ManifestMeta?

        public var status: String

        public var id: Int

        public var manifestId: String

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case createdAt = "created_at"

            case uid

            case pdfMeta = "pdf_meta"

            case userId = "user_id"

            case filters

            case isActive = "is_active"

            case companyId = "company_id"

            case meta

            case status

            case id

            case manifestId = "manifest_id"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.createdBy = createdBy

            self.createdAt = createdAt

            self.uid = uid

            self.pdfMeta = pdfMeta

            self.userId = userId

            self.filters = filters

            self.isActive = isActive

            self.companyId = companyId

            self.meta = meta

            self.status = status

            self.id = id

            self.manifestId = manifestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            id = try container.decode(Int.self, forKey: .id)

            manifestId = try container.decode(String.self, forKey: .manifestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
        }
    }
}
