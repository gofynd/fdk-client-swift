

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: BulkResponse
         Used By: Catalog
     */

    class BulkResponse: Codable {
        public var modifiedOn: String?

        public var createdBy: UserInfo1?

        public var isActive: Bool?

        public var modifiedBy: UserInfo1?

        public var batchId: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case batchId = "batch_id"

            case createdOn = "created_on"
        }

        public init(batchId: String, createdBy: UserInfo1? = nil, createdOn: String, isActive: Bool? = nil, modifiedBy: UserInfo1? = nil, modifiedOn: String? = nil) {
            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.batchId = batchId

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserInfo1.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserInfo1.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            batchId = try container.decode(String.self, forKey: .batchId)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: BulkResponse
         Used By: Catalog
     */

    class BulkResponse: Codable {
        public var modifiedOn: String?

        public var createdBy: UserInfo1?

        public var isActive: Bool?

        public var modifiedBy: UserInfo1?

        public var batchId: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case batchId = "batch_id"

            case createdOn = "created_on"
        }

        public init(batchId: String, createdBy: UserInfo1? = nil, createdOn: String, isActive: Bool? = nil, modifiedBy: UserInfo1? = nil, modifiedOn: String? = nil) {
            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.batchId = batchId

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserInfo1.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserInfo1.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            batchId = try container.decode(String.self, forKey: .batchId)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
