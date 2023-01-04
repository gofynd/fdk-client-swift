

import Foundation
public extension PlatformClient {
    /*
         Model: HSNDataInsertV2
         Used By: Catalog
     */

    class HSNDataInsertV2: Codable {
        public var modifiedBy: [String: Any]?

        public var createdBy: [String: Any]?

        public var hsnCode: String

        public var taxes: [TaxSlab]

        public var reportingHsn: String

        public var countryCode: String

        public var description: String

        public var type: String

        public var createdOn: String?

        public var modifiedOn: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case hsnCode = "hsn_code"

            case taxes

            case reportingHsn = "reporting_hsn"

            case countryCode = "country_code"

            case description

            case type

            case createdOn = "created_on"

            case modifiedOn = "modified_on"
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.hsnCode = hsnCode

            self.taxes = taxes

            self.reportingHsn = reportingHsn

            self.countryCode = countryCode

            self.description = description

            self.type = type

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            taxes = try container.decode([TaxSlab].self, forKey: .taxes)

            reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            description = try container.decode(String.self, forKey: .description)

            type = try container.decode(String.self, forKey: .type)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
