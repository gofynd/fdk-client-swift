

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Manifest
         Used By: Order
     */

    class Manifest: Codable {
        public var status: String

        public var isActive: Bool

        public var filters: Filters?

        public var createdAt: String

        public var manifestId: String

        public var companyId: Int

        public var userId: String

        public var createdBy: String

        public var id: Int

        public var uid: String

        public var meta: ManifestMeta?

        public var pdfMeta: PDFMeta?

        public enum CodingKeys: String, CodingKey {
            case status

            case isActive = "is_active"

            case filters

            case createdAt = "created_at"

            case manifestId = "manifest_id"

            case companyId = "company_id"

            case userId = "user_id"

            case createdBy = "created_by"

            case id

            case uid

            case meta

            case pdfMeta = "pdf_meta"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.status = status

            self.isActive = isActive

            self.filters = filters

            self.createdAt = createdAt

            self.manifestId = manifestId

            self.companyId = companyId

            self.userId = userId

            self.createdBy = createdBy

            self.id = id

            self.uid = uid

            self.meta = meta

            self.pdfMeta = pdfMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            userId = try container.decode(String.self, forKey: .userId)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            id = try container.decode(Int.self, forKey: .id)

            uid = try container.decode(String.self, forKey: .uid)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)
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

        public var isActive: Bool

        public var filters: Filters?

        public var createdAt: String

        public var manifestId: String

        public var companyId: Int

        public var userId: String

        public var createdBy: String

        public var id: Int

        public var uid: String

        public var meta: ManifestMeta?

        public var pdfMeta: PDFMeta?

        public enum CodingKeys: String, CodingKey {
            case status

            case isActive = "is_active"

            case filters

            case createdAt = "created_at"

            case manifestId = "manifest_id"

            case companyId = "company_id"

            case userId = "user_id"

            case createdBy = "created_by"

            case id

            case uid

            case meta

            case pdfMeta = "pdf_meta"
        }

        public init(companyId: Int, createdAt: String, createdBy: String, filters: Filters? = nil, id: Int, isActive: Bool, manifestId: String, meta: ManifestMeta? = nil, pdfMeta: PDFMeta? = nil, status: String, uid: String, userId: String) {
            self.status = status

            self.isActive = isActive

            self.filters = filters

            self.createdAt = createdAt

            self.manifestId = manifestId

            self.companyId = companyId

            self.userId = userId

            self.createdBy = createdBy

            self.id = id

            self.uid = uid

            self.meta = meta

            self.pdfMeta = pdfMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            userId = try container.decode(String.self, forKey: .userId)

            createdBy = try container.decode(String.self, forKey: .createdBy)

            id = try container.decode(Int.self, forKey: .id)

            uid = try container.decode(String.self, forKey: .uid)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pdfMeta, forKey: .pdfMeta)
        }
    }
}
