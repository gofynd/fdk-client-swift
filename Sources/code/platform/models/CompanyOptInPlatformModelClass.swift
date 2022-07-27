

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var modifiedBy: [String: Any]?

        public var brandIds: [Int]

        public var storeIds: [Int]

        public var enabled: Bool

        public var modifiedOn: Int

        public var createdOn: Int

        public var platform: String

        public var optLevel: String

        public var createdBy: [String: Any]?

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case brandIds = "brand_ids"

            case storeIds = "store_ids"

            case enabled

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case platform

            case optLevel = "opt_level"

            case createdBy = "created_by"

            case companyId = "company_id"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.modifiedBy = modifiedBy

            self.brandIds = brandIds

            self.storeIds = storeIds

            self.enabled = enabled

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.platform = platform

            self.optLevel = optLevel

            self.createdBy = createdBy

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            platform = try container.decode(String.self, forKey: .platform)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
