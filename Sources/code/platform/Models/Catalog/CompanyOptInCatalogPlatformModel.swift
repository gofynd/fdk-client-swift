

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var optLevel: String

        public var modifiedOn: Int

        public var brandIds: [Int]

        public var companyId: Int

        public var platform: String

        public var modifiedBy: [String: Any]?

        public var storeIds: [Int]

        public var createdOn: Int

        public var createdBy: [String: Any]?

        public var enabled: Bool

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case modifiedOn = "modified_on"

            case brandIds = "brand_ids"

            case companyId = "company_id"

            case platform

            case modifiedBy = "modified_by"

            case storeIds = "store_ids"

            case createdOn = "created_on"

            case createdBy = "created_by"

            case enabled
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.optLevel = optLevel

            self.modifiedOn = modifiedOn

            self.brandIds = brandIds

            self.companyId = companyId

            self.platform = platform

            self.modifiedBy = modifiedBy

            self.storeIds = storeIds

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.enabled = enabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            companyId = try container.decode(Int.self, forKey: .companyId)

            platform = try container.decode(String.self, forKey: .platform)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
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

        public var modifiedOn: Int

        public var brandIds: [Int]

        public var companyId: Int

        public var platform: String

        public var modifiedBy: [String: Any]?

        public var storeIds: [Int]

        public var createdOn: Int

        public var createdBy: [String: Any]?

        public var enabled: Bool

        public enum CodingKeys: String, CodingKey {
            case optLevel = "opt_level"

            case modifiedOn = "modified_on"

            case brandIds = "brand_ids"

            case companyId = "company_id"

            case platform

            case modifiedBy = "modified_by"

            case storeIds = "store_ids"

            case createdOn = "created_on"

            case createdBy = "created_by"

            case enabled
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.optLevel = optLevel

            self.modifiedOn = modifiedOn

            self.brandIds = brandIds

            self.companyId = companyId

            self.platform = platform

            self.modifiedBy = modifiedBy

            self.storeIds = storeIds

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.enabled = enabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            companyId = try container.decode(Int.self, forKey: .companyId)

            platform = try container.decode(String.self, forKey: .platform)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}
