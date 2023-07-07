

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: HSNDataInsertV2
         Used By: Catalog
     */

    class HSNDataInsertV2: Codable {
        public var hsnCodeId: String?

        public var type: String

        public var hsnCode: String

        public var createdBy: [String: Any]?

        public var reportingHsn: String

        public var description: String

        public var modifiedBy: [String: Any]?

        public var modifiedOn: String?

        public var countryCode: String

        public var createdOn: String?

        public var taxes: [TaxSlab]

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case type

            case hsnCode = "hsn_code"

            case createdBy = "created_by"

            case reportingHsn = "reporting_hsn"

            case description

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case countryCode = "country_code"

            case createdOn = "created_on"

            case taxes
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, hsnCodeId: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            self.hsnCodeId = hsnCodeId

            self.type = type

            self.hsnCode = hsnCode

            self.createdBy = createdBy

            self.reportingHsn = reportingHsn

            self.description = description

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.countryCode = countryCode

            self.createdOn = createdOn

            self.taxes = taxes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

            description = try container.decode(String.self, forKey: .description)

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

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxes = try container.decode([TaxSlab].self, forKey: .taxes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(taxes, forKey: .taxes)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: HSNDataInsertV2
         Used By: Catalog
     */

    class HSNDataInsertV2: Codable {
        public var hsnCodeId: String?

        public var type: String

        public var hsnCode: String

        public var createdBy: [String: Any]?

        public var reportingHsn: String

        public var description: String

        public var modifiedBy: [String: Any]?

        public var modifiedOn: String?

        public var countryCode: String

        public var createdOn: String?

        public var taxes: [TaxSlab]

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case type

            case hsnCode = "hsn_code"

            case createdBy = "created_by"

            case reportingHsn = "reporting_hsn"

            case description

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case countryCode = "country_code"

            case createdOn = "created_on"

            case taxes
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, hsnCodeId: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            self.hsnCodeId = hsnCodeId

            self.type = type

            self.hsnCode = hsnCode

            self.createdBy = createdBy

            self.reportingHsn = reportingHsn

            self.description = description

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.countryCode = countryCode

            self.createdOn = createdOn

            self.taxes = taxes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

            description = try container.decode(String.self, forKey: .description)

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

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxes = try container.decode([TaxSlab].self, forKey: .taxes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(taxes, forKey: .taxes)
        }
    }
}
