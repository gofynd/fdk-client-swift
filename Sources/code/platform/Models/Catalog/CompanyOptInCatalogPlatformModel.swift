

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var companyId: Int

        public var storeIds: [Int]

        public var brandIds: [Int]

        public var enabled: Bool

        public var modifiedBy: [String: Any]?

        public var createdBy: [String: Any]?

        public var createdOn: Int

        public var platform: String

        public var optLevel: String

        public var modifiedOn: Int

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case storeIds = "store_ids"

            case brandIds = "brand_ids"

            case enabled

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case createdOn = "created_on"

            case platform

            case optLevel = "opt_level"

            case modifiedOn = "modified_on"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.companyId = companyId

            self.storeIds = storeIds

            self.brandIds = brandIds

            self.enabled = enabled

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.createdOn = createdOn

            self.platform = platform

            self.optLevel = optLevel

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            platform = try container.decode(String.self, forKey: .platform)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var companyId: Int

        public var storeIds: [Int]

        public var brandIds: [Int]

        public var enabled: Bool

        public var modifiedBy: [String: Any]?

        public var createdBy: [String: Any]?

        public var createdOn: Int

        public var platform: String

        public var optLevel: String

        public var modifiedOn: Int

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case storeIds = "store_ids"

            case brandIds = "brand_ids"

            case enabled

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case createdOn = "created_on"

            case platform

            case optLevel = "opt_level"

            case modifiedOn = "modified_on"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.companyId = companyId

            self.storeIds = storeIds

            self.brandIds = brandIds

            self.enabled = enabled

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.createdOn = createdOn

            self.platform = platform

            self.optLevel = optLevel

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            platform = try container.decode(String.self, forKey: .platform)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
