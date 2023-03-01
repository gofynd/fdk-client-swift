

import Foundation
public extension PlatformClient {
    /*
         Model: HSNDataInsertV2
         Used By: Catalog
     */

    class HSNDataInsertV2: Codable {
        public var type: String

        public var reportingHsn: String

        public var modifiedOn: String?

        public var description: String

        public var modifiedBy: [String: Any]?

        public var countryCode: String

        public var createdBy: [String: Any]?

        public var hsnCodeId: String?

        public var hsnCode: String

        public var taxes: [TaxSlab]

        public var createdOn: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case reportingHsn = "reporting_hsn"

            case modifiedOn = "modified_on"

            case description

            case modifiedBy = "modified_by"

            case countryCode = "country_code"

            case createdBy = "created_by"

            case hsnCodeId = "hsn_code_id"

            case hsnCode = "hsn_code"

            case taxes

            case createdOn = "created_on"
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, hsnCodeId: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            self.type = type

            self.reportingHsn = reportingHsn

            self.modifiedOn = modifiedOn

            self.description = description

            self.modifiedBy = modifiedBy

            self.countryCode = countryCode

            self.createdBy = createdBy

            self.hsnCodeId = hsnCodeId

            self.hsnCode = hsnCode

            self.taxes = taxes

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            taxes = try container.decode([TaxSlab].self, forKey: .taxes)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(taxes, forKey: .taxes)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
