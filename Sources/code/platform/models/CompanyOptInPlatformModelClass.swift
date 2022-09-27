

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var companyId: Int

        public var platform: String

        public var storeIds: [Int]

        public var modifiedBy: [String: Any]?

        public var optLevel: String

        public var modifiedOn: Int

        public var createdOn: Int

        public var enabled: Bool

        public var createdBy: [String: Any]?

        public var brandIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case platform

            case storeIds = "store_ids"

            case modifiedBy = "modified_by"

            case optLevel = "opt_level"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case enabled

            case createdBy = "created_by"

            case brandIds = "brand_ids"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.companyId = companyId

            self.platform = platform

            self.storeIds = storeIds

            self.modifiedBy = modifiedBy

            self.optLevel = optLevel

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.enabled = enabled

            self.createdBy = createdBy

            self.brandIds = brandIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            platform = try container.decode(String.self, forKey: .platform)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            optLevel = try container.decode(String.self, forKey: .optLevel)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandIds = try container.decode([Int].self, forKey: .brandIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
        }
    }
}
