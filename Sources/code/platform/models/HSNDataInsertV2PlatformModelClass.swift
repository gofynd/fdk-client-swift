

import Foundation
public extension PlatformClient {
    /*
         Model: HSNDataInsertV2
         Used By: Catalog
     */

    class HSNDataInsertV2: Codable {
        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var countryCode: String

        public var reportingHsn: String

        public var description: String

        public var hsnCode: String

        public var createdBy: [String: Any]?

        public var modifiedOn: String?

        public var type: String

        public var taxes: [TaxSlab]

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case countryCode = "country_code"

            case reportingHsn = "reporting_hsn"

            case description

            case hsnCode = "hsn_code"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case type

            case taxes
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.countryCode = countryCode

            self.reportingHsn = reportingHsn

            self.description = description

            self.hsnCode = hsnCode

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.type = type

            self.taxes = taxes
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
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

            description = try container.decode(String.self, forKey: .description)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

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

            type = try container.decode(String.self, forKey: .type)

            taxes = try container.decode([TaxSlab].self, forKey: .taxes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(taxes, forKey: .taxes)
        }
    }
}
