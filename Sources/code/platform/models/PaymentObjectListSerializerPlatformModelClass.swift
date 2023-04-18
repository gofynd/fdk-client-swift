

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var companyId: String

        public var userObject: [String: Any]

        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var modifiedOn: String

        public var paymentMode: String

        public var refundObject: [String: Any]?

        public var id: String

        public var createdOn: String

        public var allStatus: [String]

        public var paymentId: String?

        public var amountInPaisa: String

        public var collectedBy: String

        public var applicationId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var currentStatus: String

        public var currency: String

        public var refundedBy: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case userObject = "user_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case modifiedOn = "modified_on"

            case paymentMode = "payment_mode"

            case refundObject = "refund_object"

            case id

            case createdOn = "created_on"

            case allStatus = "all_status"

            case paymentId = "payment_id"

            case amountInPaisa = "amount_in_paisa"

            case collectedBy = "collected_by"

            case applicationId = "application_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currentStatus = "current_status"

            case currency

            case refundedBy = "refunded_by"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.companyId = companyId

            self.userObject = userObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.modifiedOn = modifiedOn

            self.paymentMode = paymentMode

            self.refundObject = refundObject

            self.id = id

            self.createdOn = createdOn

            self.allStatus = allStatus

            self.paymentId = paymentId

            self.amountInPaisa = amountInPaisa

            self.collectedBy = collectedBy

            self.applicationId = applicationId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currentStatus = currentStatus

            self.currency = currency

            self.refundedBy = refundedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(String.self, forKey: .companyId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            currency = try container.decode(String.self, forKey: .currency)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)
        }
    }
}
