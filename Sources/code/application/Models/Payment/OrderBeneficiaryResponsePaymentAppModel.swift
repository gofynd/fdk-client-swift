

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryResponse
         Used By: Payment
     */
    class OrderBeneficiaryResponse: Codable {
        public var showBeneficiaryDetails: Bool?

        public var beneficiaries: [OrderBeneficiaryDetails]?

        public enum CodingKeys: String, CodingKey {
            case showBeneficiaryDetails = "show_beneficiary_details"

            case beneficiaries
        }

        public init(beneficiaries: [OrderBeneficiaryDetails]? = nil, showBeneficiaryDetails: Bool? = nil) {
            self.showBeneficiaryDetails = showBeneficiaryDetails

            self.beneficiaries = beneficiaries
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)

            try? container.encode(beneficiaries, forKey: .beneficiaries)
        }
    }
}
