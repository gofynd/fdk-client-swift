

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var brandIds: [Int]

        public var storeIds: [Int]

        public var optLevel: String

        public var modifiedOn: Int

        public var companyId: Int

        public var enabled: Bool

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var platform: String

        public var createdOn: Int

        public enum CodingKeys: String, CodingKey {
            case brandIds = "brand_ids"

            case storeIds = "store_ids"

            case optLevel = "opt_level"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case enabled

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case platform

            case createdOn = "created_on"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.brandIds = brandIds

            self.storeIds = storeIds

            self.optLevel = optLevel

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.enabled = enabled

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.platform = platform

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            enabled = try container.decode(Bool.self, forKey: .enabled)

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

            platform = try container.decode(String.self, forKey: .platform)

            createdOn = try container.decode(Int.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var brandIds: [Int]

        public var storeIds: [Int]

        public var optLevel: String

        public var modifiedOn: Int

        public var companyId: Int

        public var enabled: Bool

        public var createdBy: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var platform: String

        public var createdOn: Int

        public enum CodingKeys: String, CodingKey {
            case brandIds = "brand_ids"

            case storeIds = "store_ids"

            case optLevel = "opt_level"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case enabled

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case platform

            case createdOn = "created_on"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.brandIds = brandIds

            self.storeIds = storeIds

            self.optLevel = optLevel

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.enabled = enabled

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.platform = platform

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            enabled = try container.decode(Bool.self, forKey: .enabled)

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

            platform = try container.decode(String.self, forKey: .platform)

            createdOn = try container.decode(Int.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
