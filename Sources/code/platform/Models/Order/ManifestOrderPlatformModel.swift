

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var createdAt: String

        public var meta: ManifestMeta?

        public var companyId: Int

        public var pdfMeta: PDFMeta?

        public var status: String

        public var isActive: Bool

        public var manifestId: String

        public var uid: String

        public var createdBy: String

        public var filters: Filters?

        public var userId: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case meta

            case companyId = "company_id"

            case pdfMeta = "pdf_meta"

            case status

            case isActive = "is_active"

            case manifestId = "manifest_id"

            case uid

            case createdBy = "created_by"

            case filters

            case userId = "user_id"

            case id
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.createdAt = createdAt

            self.meta = meta

            self.companyId = companyId

            self.pdfMeta = pdfMeta

            self.status = status

            self.isActive = isActive

            self.manifestId = manifestId

            self.uid = uid

            self.createdBy = createdBy

            self.filters = filters

            self.userId = userId

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            uid = try container.decode(String.self, forKey: .uid)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var createdAt: String

        public var meta: ManifestMeta?

        public var companyId: Int

        public var pdfMeta: PDFMeta?

        public var status: String

        public var isActive: Bool

        public var manifestId: String

        public var uid: String

        public var createdBy: String

        public var filters: Filters?

        public var userId: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case meta

            case companyId = "company_id"

            case pdfMeta = "pdf_meta"

            case status

            case isActive = "is_active"

            case manifestId = "manifest_id"

            case uid

            case createdBy = "created_by"

            case filters

            case userId = "user_id"

            case id
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.createdAt = createdAt

            self.meta = meta

            self.companyId = companyId

            self.pdfMeta = pdfMeta

            self.status = status

            self.isActive = isActive

            self.manifestId = manifestId

            self.uid = uid

            self.createdBy = createdBy

            self.filters = filters

            self.userId = userId

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                meta = try container.decode(ManifestMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfMeta = try container.decode(PDFMeta.self, forKey: .pdfMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            uid = try container.decode(String.self, forKey: .uid)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
