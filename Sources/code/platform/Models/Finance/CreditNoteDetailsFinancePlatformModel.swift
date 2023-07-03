

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: CreditNoteDetails
         Used By: Finance
     */

    class CreditNoteDetails: Codable {
        public var cnAmount: Int?

        public var remainingCnAmount: Int?

        public var cnStatus: String?

        public var customerMobileNumber: String?

        public var cnDetails: [CnDetails]?

        public var availableCnBalance: Int?

        public var redemptionDetails: [RedemptionDetails]?

        public var cnReferenceNumber: String?

        public enum CodingKeys: String, CodingKey {
            case cnAmount = "cn_amount"

            case remainingCnAmount = "remaining_cn_amount"

            case cnStatus = "cn_status"

            case customerMobileNumber = "customer_mobile_number"

            case cnDetails = "cn_details"

            case availableCnBalance = "available_cn_balance"

            case redemptionDetails = "redemption_details"

            case cnReferenceNumber = "cn_reference_number"
        }

        public init(availableCnBalance: Int? = nil, cnAmount: Int? = nil, cnDetails: [CnDetails]? = nil, cnReferenceNumber: String? = nil, cnStatus: String? = nil, customerMobileNumber: String? = nil, redemptionDetails: [RedemptionDetails]? = nil, remainingCnAmount: Int? = nil) {
            self.cnAmount = cnAmount

            self.remainingCnAmount = remainingCnAmount

            self.cnStatus = cnStatus

            self.customerMobileNumber = customerMobileNumber

            self.cnDetails = cnDetails

            self.availableCnBalance = availableCnBalance

            self.redemptionDetails = redemptionDetails

            self.cnReferenceNumber = cnReferenceNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cnAmount = try container.decode(Int.self, forKey: .cnAmount)

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

            do {
                cnStatus = try container.decode(String.self, forKey: .cnStatus)

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
                cnDetails = try container.decode([CnDetails].self, forKey: .cnDetails)

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
                redemptionDetails = try container.decode([RedemptionDetails].self, forKey: .redemptionDetails)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cnAmount, forKey: .cnAmount)

            try? container.encodeIfPresent(remainingCnAmount, forKey: .remainingCnAmount)

            try? container.encodeIfPresent(cnStatus, forKey: .cnStatus)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(cnDetails, forKey: .cnDetails)

            try? container.encodeIfPresent(availableCnBalance, forKey: .availableCnBalance)

            try? container.encodeIfPresent(redemptionDetails, forKey: .redemptionDetails)

            try? container.encodeIfPresent(cnReferenceNumber, forKey: .cnReferenceNumber)
        }
    }
}