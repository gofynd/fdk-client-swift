

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var aggregatorPaymentObject: [String: Any]?

        public var paymentId: String?

        public var createdOn: String

        public var allStatus: [String]

        public var collectedBy: String

        public var paymentMode: String

        public var paymentGateway: String

        public var modifiedOn: String

        public var amountInPaisa: String

        public var companyId: String

        public var currency: String

        public var userObject: [String: Any]

        public var paymentModeIdentifier: String

        public var applicationId: String

        public var id: String

        public var currentStatus: String

        public var refundObject: [String: Any]?

        public var refundedBy: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentId = "payment_id"

            case createdOn = "created_on"

            case allStatus = "all_status"

            case collectedBy = "collected_by"

            case paymentMode = "payment_mode"

            case paymentGateway = "payment_gateway"

            case modifiedOn = "modified_on"

            case amountInPaisa = "amount_in_paisa"

            case companyId = "company_id"

            case currency

            case userObject = "user_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case applicationId = "application_id"

            case id

            case currentStatus = "current_status"

            case refundObject = "refund_object"

            case refundedBy = "refunded_by"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentId = paymentId

            self.createdOn = createdOn

            self.allStatus = allStatus

            self.collectedBy = collectedBy

            self.paymentMode = paymentMode

            self.paymentGateway = paymentGateway

            self.modifiedOn = modifiedOn

            self.amountInPaisa = amountInPaisa

            self.companyId = companyId

            self.currency = currency

            self.userObject = userObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.applicationId = applicationId

            self.id = id

            self.currentStatus = currentStatus

            self.refundObject = refundObject

            self.refundedBy = refundedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            companyId = try container.decode(String.self, forKey: .companyId)

            currency = try container.decode(String.self, forKey: .currency)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            id = try container.decode(String.self, forKey: .id)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)
        }
    }
}
