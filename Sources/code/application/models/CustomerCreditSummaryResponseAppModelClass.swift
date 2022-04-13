import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomerCreditSummaryResponse
         Used By: Payment
     */
    class CustomerCreditSummaryResponse: Codable {
        public var data: CreditSummary?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case success
        }

        public init(data: CreditSummary? = nil, success: Bool) {
            self.data = data

            self.success = success
        }

        public func duplicate() -> CustomerCreditSummaryResponse {
            let dict = self.dictionary!
            let copy = CustomerCreditSummaryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(CreditSummary.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
