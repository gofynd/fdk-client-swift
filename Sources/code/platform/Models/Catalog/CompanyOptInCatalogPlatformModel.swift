

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var optLevel: String

        public var modifiedBy: [String: Any]?

        public var platform: String

        public var companyId: Int

        public var createdOn: Int

        public var storeIds: [Int]

        public var createdBy: [String: Any]?

        public var enabled: Bool

        public var modifiedOn: Int

        public var brandIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case modifiedBy = "modified_by"

            case platform

            case companyId = "company_id"

            case createdOn = "created_on"

            case storeIds = "store_ids"

            case createdBy = "created_by"

            case enabled

            case modifiedOn = "modified_on"

            case brandIds = "brand_ids"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.optLevel = optLevel

            self.modifiedBy = modifiedBy

            self.platform = platform

            self.companyId = companyId

            self.createdOn = createdOn

            self.storeIds = storeIds

            self.createdBy = createdBy

            self.enabled = enabled

            self.modifiedOn = modifiedOn

            self.brandIds = brandIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platform = try container.decode(String.self, forKey: .platform)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            brandIds = try container.decode([Int].self, forKey: .brandIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var optLevel: String

        public var modifiedBy: [String: Any]?

        public var platform: String

        public var companyId: Int

        public var createdOn: Int

        public var storeIds: [Int]

        public var createdBy: [String: Any]?

        public var enabled: Bool

        public var modifiedOn: Int

        public var brandIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case modifiedBy = "modified_by"

            case platform

            case companyId = "company_id"

            case createdOn = "created_on"

            case storeIds = "store_ids"

            case createdBy = "created_by"

            case enabled

            case modifiedOn = "modified_on"

            case brandIds = "brand_ids"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.optLevel = optLevel

            self.modifiedBy = modifiedBy

            self.platform = platform

            self.companyId = companyId

            self.createdOn = createdOn

            self.storeIds = storeIds

            self.createdBy = createdBy

            self.enabled = enabled

            self.modifiedOn = modifiedOn

            self.brandIds = brandIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platform = try container.decode(String.self, forKey: .platform)

            companyId = try container.decode(Int.self, forKey: .companyId)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            brandIds = try container.decode([Int].self, forKey: .brandIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
        }
    }
}
