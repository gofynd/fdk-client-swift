

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var id: Int

        public var createdAt: String

        public var uid: String

        public var userId: String

        public var manifestId: String

        public var createdBy: String

        public var filters: Filters?

        public var meta: ManifestMeta?

        public var pdfMeta: PDFMeta?

        public var status: String

        public var isActive: Bool

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case id

            case createdAt = "created_at"

            case uid

            case userId = "user_id"

            case manifestId = "manifest_id"

            case createdBy = "created_by"

            case filters

            case meta

            case pdfMeta = "pdf_meta"

            case status

            case isActive = "is_active"

            case companyId = "company_id"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.id = id

            self.createdAt = createdAt

            self.uid = uid

            self.userId = userId

            self.manifestId = manifestId

            self.createdBy = createdBy

            self.filters = filters

            self.meta = meta

            self.pdfMeta = pdfMeta

            self.status = status

            self.isActive = isActive

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            uid = try container.decode(String.self, forKey: .uid)

            userId = try container.decode(String.self, forKey: .userId)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            createdBy = try container.decode(String.self, forKey: .createdBy)

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

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var id: Int

        public var createdAt: String

        public var uid: String

        public var userId: String

        public var manifestId: String

        public var createdBy: String

        public var filters: Filters?

        public var meta: ManifestMeta?

        public var pdfMeta: PDFMeta?

        public var status: String

        public var isActive: Bool

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case id

            case createdAt = "created_at"

            case uid

            case userId = "user_id"

            case manifestId = "manifest_id"

            case createdBy = "created_by"

            case filters

            case meta

            case pdfMeta = "pdf_meta"

            case status

            case isActive = "is_active"

            case companyId = "company_id"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.id = id

            self.createdAt = createdAt

            self.uid = uid

            self.userId = userId

            self.manifestId = manifestId

            self.createdBy = createdBy

            self.filters = filters

            self.meta = meta

            self.pdfMeta = pdfMeta

            self.status = status

            self.isActive = isActive

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            uid = try container.decode(String.self, forKey: .uid)

            userId = try container.decode(String.self, forKey: .userId)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            createdBy = try container.decode(String.self, forKey: .createdBy)

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

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
