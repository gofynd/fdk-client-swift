

import Foundation
public extension PlatformClient {
    /*
         Model: HSNDataInsertV2
         Used By: Catalog
     */

    class HSNDataInsertV2: Codable {
        public var taxes: [TaxSlab]

        public var type: String

        public var modifiedBy: [String: Any]?

        public var reportingHsn: String

        public var createdOn: String?

        public var createdBy: [String: Any]?

        public var description: String

        public var modifiedOn: String?

        public var hsnCode: String

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case taxes

            case type

            case modifiedBy = "modified_by"

            case reportingHsn = "reporting_hsn"

            case createdOn = "created_on"

            case createdBy = "created_by"

            case description

            case modifiedOn = "modified_on"

            case hsnCode = "hsn_code"

            case countryCode = "country_code"
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            self.taxes = taxes

            self.type = type

            self.modifiedBy = modifiedBy

            self.reportingHsn = reportingHsn

            self.createdOn = createdOn

            self.createdBy = createdBy

            self.description = description

            self.modifiedOn = modifiedOn

            self.hsnCode = hsnCode

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taxes = try container.decode([TaxSlab].self, forKey: .taxes)

            type = try container.decode(String.self, forKey: .type)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
