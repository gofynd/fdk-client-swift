

import Foundation
public extension PlatformClient {
    /*
         Model: TaxDetails
         Used By: Order
     */

    class TaxDetails: Codable {
        public var gstin: String?

        public var panNo: String?

        public enum CodingKeys: String, CodingKey {
            case gstin

            case panNo = "pan_no"
        }

        public init(gstin: String? = nil, panNo: String? = nil) {
            self.gstin = gstin

            self.panNo = panNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                panNo = try container.decode(String.self, forKey: .panNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(panNo, forKey: .panNo)
        }
    }
}
