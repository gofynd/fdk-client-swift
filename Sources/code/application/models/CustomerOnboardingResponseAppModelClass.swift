import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomerOnboardingResponse
         Used By: Payment
     */
    class CustomerOnboardingResponse: Codable {
        public var data: OnboardSummary

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case success
        }

        public init(data: OnboardSummary, success: Bool) {
            self.data = data

            self.success = success
        }

        public func duplicate() -> CustomerOnboardingResponse {
            let dict = self.dictionary!
            let copy = CustomerOnboardingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(OnboardSummary.self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
