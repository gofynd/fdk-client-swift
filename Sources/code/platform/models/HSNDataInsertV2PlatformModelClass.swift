

import Foundation
public extension PlatformClient {
    /*
         Model: HSNDataInsertV2
         Used By: Catalog
     */

    class HSNDataInsertV2: Codable {
        public var hsnCode: String

        public var countryCode: String

        public var taxes: [TaxSlab]

        public var type: String

        public var reportingHsn: String

        public var modifiedBy: [String: Any]?

        public var modifiedOn: String?

        public var createdOn: String?

        public var createdBy: [String: Any]?

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case countryCode = "country_code"

            case taxes

            case type

            case reportingHsn = "reporting_hsn"

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case createdBy = "created_by"

            case description
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            self.hsnCode = hsnCode

            self.countryCode = countryCode

            self.taxes = taxes

            self.type = type

            self.reportingHsn = reportingHsn

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            taxes = try container.decode([TaxSlab].self, forKey: .taxes)

            type = try container.decode(String.self, forKey: .type)

            reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
