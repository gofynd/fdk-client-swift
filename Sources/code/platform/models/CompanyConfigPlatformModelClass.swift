

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyConfig
         Used By: Inventory
     */

    class CompanyConfig: Codable {
        public var companyId: Int?

        public var excludeSteps: [Int]?

        public var hiddenClosetKeys: [String]?

        public var openTags: [String: Any]?

        public var taxIdentifiers: [String]?

        public var deleteQuantityThreshold: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case excludeSteps = "exclude_steps"

            case hiddenClosetKeys = "hidden_closet_keys"

            case openTags = "open_tags"

            case taxIdentifiers = "tax_identifiers"

            case deleteQuantityThreshold = "delete_quantity_threshold"
        }

        public init(companyId: Int? = nil, deleteQuantityThreshold: Int? = nil, excludeSteps: [Int]? = nil, hiddenClosetKeys: [String]? = nil, openTags: [String: Any]? = nil, taxIdentifiers: [String]? = nil) {
            self.companyId = companyId

            self.excludeSteps = excludeSteps

            self.hiddenClosetKeys = hiddenClosetKeys

            self.openTags = openTags

            self.taxIdentifiers = taxIdentifiers

            self.deleteQuantityThreshold = deleteQuantityThreshold
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                excludeSteps = try container.decode([Int].self, forKey: .excludeSteps)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hiddenClosetKeys = try container.decode([String].self, forKey: .hiddenClosetKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                openTags = try container.decode([String: Any].self, forKey: .openTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxIdentifiers = try container.decode([String].self, forKey: .taxIdentifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deleteQuantityThreshold = try container.decode(Int.self, forKey: .deleteQuantityThreshold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(excludeSteps, forKey: .excludeSteps)

            try? container.encodeIfPresent(hiddenClosetKeys, forKey: .hiddenClosetKeys)

            try? container.encodeIfPresent(openTags, forKey: .openTags)

            try? container.encodeIfPresent(taxIdentifiers, forKey: .taxIdentifiers)

            try? container.encodeIfPresent(deleteQuantityThreshold, forKey: .deleteQuantityThreshold)
        }
    }
}
