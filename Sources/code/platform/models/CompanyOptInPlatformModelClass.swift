

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyOptIn
         Used By: Catalog
     */

    class CompanyOptIn: Codable {
        public var createdBy: [String: Any]?

        public var companyId: Int

        public var modifiedOn: Int

        public var createdOn: Int

        public var enabled: Bool

        public var optLevel: String

        public var storeIds: [Int]

        public var platform: String

        public var brandIds: [Int]

        public var modifiedBy: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case createdBy = "created_by"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case enabled

            case optLevel = "opt_level"

            case storeIds = "store_ids"

            case platform

            case brandIds = "brand_ids"

            case modifiedBy = "modified_by"
        }

        public init(brandIds: [Int], companyId: Int, createdBy: [String: Any]? = nil, createdOn: Int, enabled: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: Int, optLevel: String, platform: String, storeIds: [Int]) {
            self.createdBy = createdBy

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.enabled = enabled

            self.optLevel = optLevel

            self.storeIds = storeIds

            self.platform = platform

            self.brandIds = brandIds

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            optLevel = try container.decode(String.self, forKey: .optLevel)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            platform = try container.decode(String.self, forKey: .platform)

            brandIds = try container.decode([Int].self, forKey: .brandIds)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(optLevel, forKey: .optLevel)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        }
    }
}
