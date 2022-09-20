

import Foundation
public extension PlatformClient {
    /*
         Model: TaxIdentifier
         Used By: Catalog
     */

    class TaxIdentifier: Codable {
        public var hsnCode: String?

        public var reportingHsn: String?

        public var hsnCodeId: String?

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case reportingHsn = "reporting_hsn"

            case hsnCodeId = "hsn_code_id"
        }

        public init(hsnCode: String? = nil, hsnCodeId: String? = nil, reportingHsn: String? = nil) {
            self.hsnCode = hsnCode

            self.reportingHsn = reportingHsn

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
