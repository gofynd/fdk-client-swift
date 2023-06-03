

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetInvoiceListRequest
         Used By: Finance
     */

    class GetInvoiceListRequest: Codable {
        public var data: GetInvoiceListPayloadData?

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: GetInvoiceListPayloadData? = nil) {
            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(GetInvoiceListPayloadData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
