

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CreditNoteDetails
         Used By: Finance
     */

    class CreditNoteDetails: Codable {
        public var cnDetails: [CnDetails]?

        public var redemptionDetails: [RedemptionDetails]?

        public var customerMobileNumber: String?

        public var cnReferenceNumber: String?

        public var cnAmount: Int?

        public var cnStatus: String?

        public var availableCnBalance: Int?

        public var remainingCnAmount: Int?

        public enum CodingKeys: String, CodingKey {
            case cnDetails = "cn_details"

            case redemptionDetails = "redemption_details"

            case customerMobileNumber = "customer_mobile_number"

            case cnReferenceNumber = "cn_reference_number"

            case cnAmount = "cn_amount"

            case cnStatus = "cn_status"

            case availableCnBalance = "available_cn_balance"

            case remainingCnAmount = "remaining_cn_amount"
        }

        public init(availableCnBalance: Int? = nil, cnAmount: Int? = nil, cnDetails: [CnDetails]? = nil, cnReferenceNumber: String? = nil, cnStatus: String? = nil, customerMobileNumber: String? = nil, redemptionDetails: [RedemptionDetails]? = nil, remainingCnAmount: Int? = nil) {
            self.cnDetails = cnDetails

            self.redemptionDetails = redemptionDetails

            self.customerMobileNumber = customerMobileNumber

            self.cnReferenceNumber = cnReferenceNumber

            self.cnAmount = cnAmount

            self.cnStatus = cnStatus

            self.availableCnBalance = availableCnBalance

            self.remainingCnAmount = remainingCnAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cnDetails = try container.decode([CnDetails].self, forKey: .cnDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redemptionDetails = try container.decode([RedemptionDetails].self, forKey: .redemptionDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cnReferenceNumber = try container.decode(String.self, forKey: .cnReferenceNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cnAmount = try container.decode(Int.self, forKey: .cnAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cnStatus = try container.decode(String.self, forKey: .cnStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                availableCnBalance = try container.decode(Int.self, forKey: .availableCnBalance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                remainingCnAmount = try container.decode(Int.self, forKey: .remainingCnAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cnDetails, forKey: .cnDetails)

            try? container.encodeIfPresent(redemptionDetails, forKey: .redemptionDetails)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(cnReferenceNumber, forKey: .cnReferenceNumber)

            try? container.encodeIfPresent(cnAmount, forKey: .cnAmount)

            try? container.encodeIfPresent(cnStatus, forKey: .cnStatus)

            try? container.encodeIfPresent(availableCnBalance, forKey: .availableCnBalance)

            try? container.encodeIfPresent(remainingCnAmount, forKey: .remainingCnAmount)
        }
    }
}
