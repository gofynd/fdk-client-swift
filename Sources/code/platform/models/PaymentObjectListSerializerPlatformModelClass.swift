

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var modifiedOn: String

        public var refundedBy: String

        public var currentStatus: String

        public var currency: String

        public var createdOn: String

        public var paymentMode: String

        public var companyId: String

        public var allStatus: [String]

        public var collectedBy: String

        public var amountInPaisa: String

        public var paymentGateway: String

        public var applicationId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var userObject: [String: Any]

        public var paymentId: String?

        public var id: String

        public var refundObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case refundedBy = "refunded_by"

            case currentStatus = "current_status"

            case currency

            case createdOn = "created_on"

            case paymentMode = "payment_mode"

            case companyId = "company_id"

            case allStatus = "all_status"

            case collectedBy = "collected_by"

            case amountInPaisa = "amount_in_paisa"

            case paymentGateway = "payment_gateway"

            case applicationId = "application_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case userObject = "user_object"

            case paymentId = "payment_id"

            case id

            case refundObject = "refund_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.modifiedOn = modifiedOn

            self.refundedBy = refundedBy

            self.currentStatus = currentStatus

            self.currency = currency

            self.createdOn = createdOn

            self.paymentMode = paymentMode

            self.companyId = companyId

            self.allStatus = allStatus

            self.collectedBy = collectedBy

            self.amountInPaisa = amountInPaisa

            self.paymentGateway = paymentGateway

            self.applicationId = applicationId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.userObject = userObject

            self.paymentId = paymentId

            self.id = id

            self.refundObject = refundObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            currency = try container.decode(String.self, forKey: .currency)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            companyId = try container.decode(String.self, forKey: .companyId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(refundObject, forKey: .refundObject)
        }
    }
}
