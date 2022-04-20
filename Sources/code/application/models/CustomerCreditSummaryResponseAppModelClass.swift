import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomerCreditSummaryResponse
         Used By: Payment
     */
    class CustomerCreditSummaryResponse: Codable {
        public var success: Bool

        public var data: CreditSummary?

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: CreditSummary? = nil, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> CustomerCreditSummaryResponse {
            let dict = self.dictionary!
            let copy = CustomerCreditSummaryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                data = try container.decode(CreditSummary.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
