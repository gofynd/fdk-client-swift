

import Foundation
public extension PlatformClient {
    /*
         Model: TaxInfo
         Used By: OrderManage
     */

    class TaxInfo: Codable {
        public var gstin: String?

        public var b2BGstinNumber: String?

        public enum CodingKeys: String, CodingKey {
            case gstin

            case b2BGstinNumber = "b2b_gstin_number"
        }

        public init(b2BGstinNumber: String? = nil, gstin: String? = nil) {
            self.gstin = gstin

            self.b2BGstinNumber = b2BGstinNumber
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
                b2BGstinNumber = try container.decode(String.self, forKey: .b2BGstinNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(b2BGstinNumber, forKey: .b2BGstinNumber)
        }
    }
}
