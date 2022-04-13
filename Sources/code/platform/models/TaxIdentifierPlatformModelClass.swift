import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: TaxIdentifier
         Used By: Catalog
     */

    class TaxIdentifier: Codable {
        public var reportingHsn: String?

        public var hsnCode: String?

        public var hsnCodeId: String?

        public enum CodingKeys: String, CodingKey {
            case reportingHsn = "reporting_hsn"

            case hsnCode = "hsn_code"

            case hsnCodeId = "hsn_code_id"
        }

        public init(hsnCode: String?, hsnCodeId: String?, reportingHsn: String?) {
            self.reportingHsn = reportingHsn

            self.hsnCode = hsnCode

            self.hsnCodeId = hsnCodeId
        }

        public func duplicate() -> TaxIdentifier {
            let dict = self.dictionary!
            let copy = TaxIdentifier(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reportingHsn = try container.decode(String.self, forKey: .reportingHsn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

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

            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
