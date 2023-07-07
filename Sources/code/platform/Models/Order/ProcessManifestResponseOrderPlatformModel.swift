

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ProcessManifestResponse
         Used By: Order
     */

    class ProcessManifestResponse: Codable {
        public var companyId: Int?

        public var userId: String?

        public var action: String?

        public var manifestId: String?

        public var uid: String?

        public var filters: Filters?

        public var createdBy: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case userId = "user_id"

            case action

            case manifestId = "manifest_id"

            case uid

            case filters

            case createdBy = "created_by"
        }

        public init(action: String? = nil, companyId: Int? = nil, createdBy: String? = nil, filters: Filters? = nil, manifestId: String? = nil, uid: String? = nil, userId: String? = nil) {
            self.companyId = companyId

            self.userId = userId

            self.action = action

            self.manifestId = manifestId

            self.uid = uid

            self.filters = filters

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manifestId = try container.decode(String.self, forKey: .manifestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ProcessManifestResponse
         Used By: Order
     */

    class ProcessManifestResponse: Codable {
        public var companyId: Int?

        public var userId: String?

        public var action: String?

        public var manifestId: String?

        public var uid: String?

        public var filters: Filters?

        public var createdBy: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case userId = "user_id"

            case action

            case manifestId = "manifest_id"

            case uid

            case filters

            case createdBy = "created_by"
        }

        public init(action: String? = nil, companyId: Int? = nil, createdBy: String? = nil, filters: Filters? = nil, manifestId: String? = nil, uid: String? = nil, userId: String? = nil) {
            self.companyId = companyId

            self.userId = userId

            self.action = action

            self.manifestId = manifestId

            self.uid = uid

            self.filters = filters

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manifestId = try container.decode(String.self, forKey: .manifestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(Filters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
        }
    }
}
