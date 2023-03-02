

import Foundation
public extension PlatformClient {
    /*
         Model: HSNDataInsertV2
         Used By: Catalog
     */

    class HSNDataInsertV2: Codable {
        public var reportingHsn: String

        public var modifiedOn: String?

        public var type: String

        public var taxes: [TaxSlab]

        public var countryCode: String

        public var createdBy: [String: Any]?

        public var createdOn: String?

        public var modifiedBy: [String: Any]?

        public var description: String

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case reportingHsn = "reporting_hsn"

            case modifiedOn = "modified_on"

            case type

            case taxes

            case countryCode = "country_code"

            case createdBy = "created_by"

            case createdOn = "created_on"

            case modifiedBy = "modified_by"

            case description

            case hsnCode = "hsn_code"
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            self.reportingHsn = reportingHsn

            self.modifiedOn = modifiedOn

            self.type = type

            self.taxes = taxes

            self.countryCode = countryCode

            self.createdBy = createdBy

            self.createdOn = createdOn

            self.modifiedBy = modifiedBy

            self.description = description

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            taxes = try container.decode([TaxSlab].self, forKey: .taxes)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            description = try container.decode(String.self, forKey: .description)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}
