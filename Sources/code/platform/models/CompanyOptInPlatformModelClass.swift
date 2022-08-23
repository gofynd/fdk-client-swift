

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var storeIds: [Int]

        public var companyId: Int

        public var brandIds: [Int]

        public var enabled: Bool

        public var createdOn: Int

        public var modifiedOn: Int

        public var createdBy: [String: Any]?

        public var optLevel: String

        public var platform: String

        public var modifiedBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case storeIds = "store_ids"

            case companyId = "company_id"

            case brandIds = "brand_ids"

            case enabled

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case optLevel = "opt_level"

            case platform

            case modifiedBy = "modified_by"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.storeIds = storeIds

            self.companyId = companyId

            self.brandIds = brandIds

            self.enabled = enabled

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.optLevel = optLevel

            self.platform = platform

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            companyId = try container.decode(Int.self, forKey: .companyId)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            optLevel = try container.decode(String.self, forKey: .optLevel)

            platform = try container.decode(String.self, forKey: .platform)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        }
    }
}
