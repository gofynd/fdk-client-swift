

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var enabled: Bool

        public var optLevel: String

        public var createdOn: Int

        public var brandIds: [Int]

        public var storeIds: [Int]

        public var modifiedBy: [String: Any]?

        public var modifiedOn: Int

        public var createdBy: [String: Any]?

        public var companyId: Int

        public var platform: String

        public enum CodingKeys: String, CodingKey {
            case enabled

            case optLevel = "opt_level"

            case createdOn = "created_on"

            case brandIds = "brand_ids"

            case storeIds = "store_ids"

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case companyId = "company_id"

            case platform
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.enabled = enabled

            self.optLevel = optLevel

            self.createdOn = createdOn

            self.brandIds = brandIds

            self.storeIds = storeIds

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.companyId = companyId

            self.platform = platform
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            platform = try container.decode(String.self, forKey: .platform)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(platform, forKey: .platform)
        }
    }
}
