

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var companyId: Int

        public var createdBy: [String: Any]?

        public var platform: String

        public var enabled: Bool

        public var storeIds: [Int]

        public var modifiedOn: Int

        public var brandIds: [Int]

        public var modifiedBy: [String: Any]?

        public var createdOn: Int

        public var optLevel: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case createdBy = "created_by"

            case platform

            case enabled

            case storeIds = "store_ids"

            case modifiedOn = "modified_on"

            case brandIds = "brand_ids"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case optLevel = "opt_level"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.companyId = companyId

            self.createdBy = createdBy

            self.platform = platform

            self.enabled = enabled

            self.storeIds = storeIds

            self.modifiedOn = modifiedOn

            self.brandIds = brandIds

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.optLevel = optLevel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platform = try container.decode(String.self, forKey: .platform)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            optLevel = try container.decode(String.self, forKey: .optLevel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)
        }
    }
}
