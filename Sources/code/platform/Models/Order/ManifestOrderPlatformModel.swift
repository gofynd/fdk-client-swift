

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var filters: Filters?

        public var status: String

        public var companyId: Int

        public var id: Int

        public var createdBy: String

        public var pdfMeta: PDFMeta?

        public var createdAt: String

        public var isActive: Bool

        public var meta: ManifestMeta?

        public var uid: String

        public var userId: String

        public var manifestId: String

        public enum CodingKeys: String, CodingKey {
            case filters

            case status

            case companyId = "company_id"

            case id

            case createdBy = "created_by"

            case pdfMeta = "pdf_meta"

            case createdAt = "created_at"

            case isActive = "is_active"

            case meta

            case uid

            case userId = "user_id"

            case manifestId = "manifest_id"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.filters = filters

            self.status = status

            self.companyId = companyId

            self.id = id

            self.createdBy = createdBy

            self.pdfMeta = pdfMeta

            self.createdAt = createdAt

            self.isActive = isActive

            self.meta = meta

            self.uid = uid

            self.userId = userId

            self.manifestId = manifestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(Int.self, forKey: .id)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            userId = try container.decode(String.self, forKey: .userId)

            manifestId = try container.decode(String.self, forKey: .manifestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(userId, forKey: .userId)

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
        public var filters: Filters?

        public var status: String

        public var companyId: Int

        public var id: Int

        public var createdBy: String

        public var pdfMeta: PDFMeta?

        public var createdAt: String

        public var isActive: Bool

        public var meta: ManifestMeta?

        public var uid: String

        public var userId: String

        public var manifestId: String

        public enum CodingKeys: String, CodingKey {
            case filters

            case status

            case companyId = "company_id"

            case id

            case createdBy = "created_by"

            case pdfMeta = "pdf_meta"

            case createdAt = "created_at"

            case isActive = "is_active"

            case meta

            case uid

            case userId = "user_id"

            case manifestId = "manifest_id"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.filters = filters

            self.status = status

            self.companyId = companyId

            self.id = id

            self.createdBy = createdBy

            self.pdfMeta = pdfMeta

            self.createdAt = createdAt

            self.isActive = isActive

            self.meta = meta

            self.uid = uid

            self.userId = userId

            self.manifestId = manifestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(Int.self, forKey: .id)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            userId = try container.decode(String.self, forKey: .userId)

            manifestId = try container.decode(String.self, forKey: .manifestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
        }
    }
}
