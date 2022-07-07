

import Foundation
public extension PlatformClient {
    /*
         Model: HSNDataInsertV2
         Used By: Catalog
     */

    class HSNDataInsertV2: Codable {
        public var description: String

        public var hsnCode: String

        public var createdOn: String?

        public var createdBy: [String: Any]?

        public var type: String

        public var modifiedOn: String?

        public var taxes: [TaxSlab]

        public var modifiedBy: [String: Any]?

        public var countryCode: String

        public var reportingHsn: String

        public enum CodingKeys: String, CodingKey {
            case description

            case hsnCode = "hsn_code"

            case createdOn = "created_on"

            case createdBy = "created_by"

            case type

            case modifiedOn = "modified_on"

            case taxes

            case modifiedBy = "modified_by"

            case countryCode = "country_code"

            case reportingHsn = "reporting_hsn"
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            self.description = description

            self.hsnCode = hsnCode

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.type = type

            self.modifiedOn = modifiedOn

            self.taxes = taxes

            self.modifiedBy = modifiedBy

            self.countryCode = countryCode

            self.reportingHsn = reportingHsn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

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

            type = try container.decode(String.self, forKey: .type)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxes = try container.decode([TaxSlab].self, forKey: .taxes)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            reportingHsn = try container.decode(String.self, forKey: .reportingHsn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)
        }
    }
}
