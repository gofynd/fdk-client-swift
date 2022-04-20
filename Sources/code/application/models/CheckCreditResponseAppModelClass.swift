import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CheckCreditResponse
         Used By: Payment
     */
    class CheckCreditResponse: Codable {
        public var success: Bool

        public var data: CreditDetail

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: CreditDetail, success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> CheckCreditResponse {
            let dict = self.dictionary!
            let copy = CheckCreditResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode(CreditDetail.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
