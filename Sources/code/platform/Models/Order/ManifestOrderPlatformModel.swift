

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var pdfMeta: PDFMeta?

        public var id: Int

        public var companyId: Int

        public var isActive: Bool

        public var status: String

        public var createdAt: String

        public var filters: Filters?

        public var manifestId: String

        public var userId: String

        public var meta: ManifestMeta?

        public var createdBy: String

        public var uid: String

        public enum CodingKeys: String, CodingKey {
            case pdfMeta = "pdf_meta"

            case id

            case companyId = "company_id"

            case isActive = "is_active"

            case status

            case createdAt = "created_at"

            case filters

            case manifestId = "manifest_id"

            case userId = "user_id"

            case meta

            case createdBy = "created_by"

            case uid
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.pdfMeta = pdfMeta

            self.id = id

            self.companyId = companyId

            self.isActive = isActive

            self.status = status

            self.createdAt = createdAt

            self.filters = filters

            self.manifestId = manifestId

            self.userId = userId

            self.meta = meta

            self.createdBy = createdBy

            self.uid = uid
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

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            status = try container.decode(String.self, forKey: .status)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manifestId = try container.decode(String.self, forKey: .manifestId)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdBy = try container.decode(String.self, forKey: .createdBy)

            uid = try container.decode(String.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(uid, forKey: .uid)
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

        public var companyId: Int

        public var isActive: Bool

        public var status: String

        public var createdAt: String

        public var filters: Filters?

        public var manifestId: String

        public var userId: String

        public var meta: ManifestMeta?

        public var createdBy: String

        public var uid: String

        public enum CodingKeys: String, CodingKey {
            case pdfMeta = "pdf_meta"

            case id

            case companyId = "company_id"

            case isActive = "is_active"

            case status

            case createdAt = "created_at"

            case filters

            case manifestId = "manifest_id"

            case userId = "user_id"

            case meta

            case createdBy = "created_by"

            case uid
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.pdfMeta = pdfMeta

            self.id = id

            self.companyId = companyId

            self.isActive = isActive

            self.status = status

            self.createdAt = createdAt

            self.filters = filters

            self.manifestId = manifestId

            self.userId = userId

            self.meta = meta

            self.createdBy = createdBy

            self.uid = uid
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

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            status = try container.decode(String.self, forKey: .status)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manifestId = try container.decode(String.self, forKey: .manifestId)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdBy = try container.decode(String.self, forKey: .createdBy)

            uid = try container.decode(String.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
