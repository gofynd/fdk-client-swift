

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var status: String

        public var pdfMeta: PDFMeta?

        public var isActive: Bool

        public var filters: Filters?

        public var manifestId: String

        public var userId: String

        public var createdBy: String

        public var meta: ManifestMeta?

        public var uid: String

        public var companyId: Int

        public var id: Int

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case status

            case pdfMeta = "pdf_meta"

            case isActive = "is_active"

            case filters

            case manifestId = "manifest_id"

            case userId = "user_id"

            case createdBy = "created_by"

            case meta

            case uid

            case companyId = "company_id"

            case id

            case createdAt = "created_at"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.status = status

            self.pdfMeta = pdfMeta

            self.isActive = isActive

            self.filters = filters

            self.manifestId = manifestId

            self.userId = userId

            self.createdBy = createdBy

            self.meta = meta

            self.uid = uid

            self.companyId = companyId

            self.id = id

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manifestId = try container.decode(String.self, forKey: .manifestId)

            userId = try container.decode(String.self, forKey: .userId)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(Int.self, forKey: .id)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
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

        public var pdfMeta: PDFMeta?

        public var isActive: Bool

        public var filters: Filters?

        public var manifestId: String

        public var userId: String

        public var createdBy: String

        public var meta: ManifestMeta?

        public var uid: String

        public var companyId: Int

        public var id: Int

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case status

            case pdfMeta = "pdf_meta"

            case isActive = "is_active"

            case filters

            case manifestId = "manifest_id"

            case userId = "user_id"

            case createdBy = "created_by"

            case meta

            case uid

            case companyId = "company_id"

            case id

            case createdAt = "created_at"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.status = status

            self.pdfMeta = pdfMeta

            self.isActive = isActive

            self.filters = filters

            self.manifestId = manifestId

            self.userId = userId

            self.createdBy = createdBy

            self.meta = meta

            self.uid = uid

            self.companyId = companyId

            self.id = id

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manifestId = try container.decode(String.self, forKey: .manifestId)

            userId = try container.decode(String.self, forKey: .userId)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(Int.self, forKey: .id)

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
