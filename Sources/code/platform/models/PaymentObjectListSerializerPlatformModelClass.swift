

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var userObject: [String: Any]

        public var paymentModeIdentifier: String

        public var companyId: String

        public var paymentMode: String

        public var refundedBy: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentGateway: String

        public var allStatus: [String]

        public var refundObject: [String: Any]?

        public var applicationId: String

        public var paymentId: String?

        public var amountInPaisa: String

        public var modifiedOn: String

        public var currency: String

        public var createdOn: String

        public var id: String

        public var collectedBy: String

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case userObject = "user_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case companyId = "company_id"

            case paymentMode = "payment_mode"

            case refundedBy = "refunded_by"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentGateway = "payment_gateway"

            case allStatus = "all_status"

            case refundObject = "refund_object"

            case applicationId = "application_id"

            case paymentId = "payment_id"

            case amountInPaisa = "amount_in_paisa"

            case modifiedOn = "modified_on"

            case currency

            case createdOn = "created_on"

            case id

            case collectedBy = "collected_by"

            case currentStatus = "current_status"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.userObject = userObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.companyId = companyId

            self.paymentMode = paymentMode

            self.refundedBy = refundedBy

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentGateway = paymentGateway

            self.allStatus = allStatus

            self.refundObject = refundObject

            self.applicationId = applicationId

            self.paymentId = paymentId

            self.amountInPaisa = amountInPaisa

            self.modifiedOn = modifiedOn

            self.currency = currency

            self.createdOn = createdOn

            self.id = id

            self.collectedBy = collectedBy

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currency = try container.decode(String.self, forKey: .currency)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            id = try container.decode(String.self, forKey: .id)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}
