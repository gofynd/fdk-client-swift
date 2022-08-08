

import Foundation
public extension ApplicationClient {
    /*
         Model: SetDefaultBeneficiaryResponse
         Used By: Payment
     */
    class SetDefaultBeneficiaryResponse: Codable {
        public var isBeneficiarySet: Bool

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case isBeneficiarySet = "is_beneficiary_set"

            case success
        }

        public init(isBeneficiarySet: Bool, success: Bool? = nil) {
            self.isBeneficiarySet = isBeneficiarySet

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isBeneficiarySet = try container.decode(Bool.self, forKey: .isBeneficiarySet)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isBeneficiarySet, forKey: .isBeneficiarySet)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
