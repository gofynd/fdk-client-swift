

import Foundation
public extension PlatformClient {
    /*
         Model: HSNDataInsertV2
         Used By: Catalog
     */

    class HSNDataInsertV2: Codable {
        public var createdOn: String?

        public var createdBy: [String: Any]?

        public var description: String

        public var modifiedBy: [String: Any]?

        public var countryCode: String

        public var taxes: [TaxSlab]

        public var reportingHsn: String

        public var type: String

        public var modifiedOn: String?

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case createdBy = "created_by"

            case description

            case modifiedBy = "modified_by"

            case countryCode = "country_code"

            case taxes

            case reportingHsn = "reporting_hsn"

            case type

            case modifiedOn = "modified_on"

            case hsnCode = "hsn_code"
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            self.createdOn = createdOn

            self.createdBy = createdBy

            self.description = description

            self.modifiedBy = modifiedBy

            self.countryCode = countryCode

            self.taxes = taxes

            self.reportingHsn = reportingHsn

            self.type = type

            self.modifiedOn = modifiedOn

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            taxes = try container.decode([TaxSlab].self, forKey: .taxes)

            reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

            type = try container.decode(String.self, forKey: .type)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}
