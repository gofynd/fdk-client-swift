

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var optLevel: String

        public var brandIds: [Int]

        public var modifiedOn: Int

        public var enabled: Bool

        public var storeIds: [Int]

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var createdOn: Int

        public var platform: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case brandIds = "brand_ids"

            case modifiedOn = "modified_on"

            case enabled

            case storeIds = "store_ids"

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case platform

            case companyId = "company_id"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.optLevel = optLevel

            self.brandIds = brandIds

            self.modifiedOn = modifiedOn

            self.enabled = enabled

            self.storeIds = storeIds

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.platform = platform

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            platform = try container.decode(String.self, forKey: .platform)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
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

        public var brandIds: [Int]

        public var modifiedOn: Int

        public var enabled: Bool

        public var storeIds: [Int]

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var createdOn: Int

        public var platform: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case brandIds = "brand_ids"

            case modifiedOn = "modified_on"

            case enabled

            case storeIds = "store_ids"

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case platform

            case companyId = "company_id"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.optLevel = optLevel

            self.brandIds = brandIds

            self.modifiedOn = modifiedOn

            self.enabled = enabled

            self.storeIds = storeIds

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.platform = platform

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            platform = try container.decode(String.self, forKey: .platform)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
