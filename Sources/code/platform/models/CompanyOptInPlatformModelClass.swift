

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var platform: String

        public var createdBy: [String: Any]?

        public var companyId: Int

        public var modifiedBy: [String: Any]?

        public var storeIds: [Int]

        public var brandIds: [Int]

        public var optLevel: String

        public var enabled: Bool

        public var modifiedOn: Int

        public var createdOn: Int

        public enum CodingKeys: String, CodingKey {
            case platform

            case createdBy = "created_by"

            case companyId = "company_id"

            case modifiedBy = "modified_by"

            case storeIds = "store_ids"

            case brandIds = "brand_ids"

            case optLevel = "opt_level"

            case enabled

            case modifiedOn = "modified_on"

            case createdOn = "created_on"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.platform = platform

            self.createdBy = createdBy

            self.companyId = companyId

            self.modifiedBy = modifiedBy

            self.storeIds = storeIds

            self.brandIds = brandIds

            self.optLevel = optLevel

            self.enabled = enabled

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            platform = try container.decode(String.self, forKey: .platform)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            createdOn = try container.decode(Int.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
