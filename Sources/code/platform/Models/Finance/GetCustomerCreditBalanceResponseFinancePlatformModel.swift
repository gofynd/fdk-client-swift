

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetCustomerCreditBalanceResponse
         Used By: Finance
     */

    class GetCustomerCreditBalanceResponse: Codable {
        public var success: Bool?

        public var data: GetCustomerCreditBalanceResponseData?

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: GetCustomerCreditBalanceResponseData? = nil, success: Bool? = nil) {
            self.success = success

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(GetCustomerCreditBalanceResponseData.self, forKey: .data)

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
